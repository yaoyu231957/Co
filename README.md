# Co（计组）-    一个简单的CPU的开发过程
## 构造

![image-20231121224524298](C:\Users\86139\AppData\Roaming\Typora\typora-user-images\image-20231121224524298.png)

## 结构设计

### 数据通路

> #### 总流水线阶段
>
> | 阶段                  | 简称 | 功能概述                                               |
> | --------------------- | ---- | ------------------------------------------------------ |
> | 取指阶段（Fetch）     | F    | 从指令存储器中读取指令                                 |
> | 译码阶段（Decode）    | D    | 从寄存器文件中读取源操作数并对指令译码以便得到控制信号 |
> | 执行阶段（Execute）   | E    | 使用 ALU 执行计算                                      |
> | 存储阶段（Memory）    | M    | 读或写数据存储器                                       |
> | 写回阶段（Writeback） | W    | 将结果写回到寄存器文件                                 |
>
> #### 取指阶段（Fetch）
>
> - PC
> - NPC
> - IM
>
> #### IF/ID寄存器
>
> #### 译码阶段（Decode）
>
> - GRF
> - EXT
>
> #### ID/EX寄存器
>
> #### 执行阶段（Execute）
>
> - ALU
>
> #### EX/MEM寄存器
>
> #### 存储阶段（Memory）
>
> - DM
>
> #### MEM/WB寄存器
>
> #### 写回阶段（Writeback）
>
> - GRF



#### 指令过程详情

|               | 取指阶段（Fetch）                              | IF/ID寄存器 | 译码阶段（Decode）                                           | ID/EX寄存器                                   | 执行阶段（Execute）                  | EX/MEM寄存器                         | 存储阶段（Memory）                      | MEM/WB寄存器                         | 写回阶段（Writeback）                                 |
| ------------- | ---------------------------------------------- | ----------- | ------------------------------------------------------------ | --------------------------------------------- | ------------------------------------ | ------------------------------------ | --------------------------------------- | ------------------------------------ | ----------------------------------------------------- |
| R型指令       | 从 PC 寄存器取地址，根据地址从 IM 获得指令编码 | 存入指令    | 根据相应寄存器 rs、rt 地址获取其中数据                       | 存入rs,rt数据，rd地址                         | ALU 计算                             | 存入ALU计算结果，rd地址              | 无                                      | 存入ALU计算结果，rd地址              | 根据rd 地址与 WD（ALUout），将相应数据写入 rd 中      |
| I型指令       | 从 PC 寄存器取地址，根据地址从 IM 获得指令编码 | 存入指令    | 获取rs数据,将指令低 16 位取出经过 EXT扩展（Shift移位）       | 存入rs数据,rt地址，EXT扩展（Shift移位）后结果 | ALU 计算（无）                       | 存入ALU计算（Shift移位）结果，rt地址 | 无                                      | 存入ALU计算（Shift移位）结果，rt地址 | 根据rt 地址与 WD（ALUout/Shift），将相应数据写入 rt中 |
| Lw            | 从 PC 寄存器取地址，根据地址从 IM 获得指令编码 | 存入指令    | 获取rs数据,将指令低 16 位取出经过 EXT扩展                    | 存入rs数据,rt地址，EXT扩展后结果              | 通过 rs 寄存器的数据与立即数计算地址 | 存入ALU计算结果，rt地址              | 根据 ALU 计算出的地址仿存               | 存入DM取值结果，rt地址               | 根据rt 地址与 WD（DMout），将相应数据写入 rt中        |
| Sw            | 从 PC 寄存器取地址，根据地址从 IM 获得指令编码 | 存入指令    | 获取rs数据,将指令低 16 位取出经过 EXT扩展                    | 存入rs,rt数据,EXT扩展后结果                   | 通过 rs 寄存器的数据与立即数计算地址 | 存入ALU计算结果，rt数据              | 将 rt 寄存器的数据写入 ALU 计算出的地址 | 无                                   | 无                                                    |
| 跳转 B 型指令 | 从 PC 寄存器取地址，根据地址从 IM 获得指令编码 | 存入指令    | 比较读取出的 rs 和 rt 寄存器的数据，若相等，则通过多选器将拓展后的立即数作为下一周期的 PC 写入 PC 寄存器 | 无                                            | 无                                   | 无                                   | 无                                      | 无                                   | 无                                                    |
| 跳转 J 型指令 | 从 PC 寄存器取地址，根据地址从 IM 获得指令编码 | 存入指令    | 通过多选器将拓展后的立即数作为下一周期的 PC 写入             | 存入PC + 8                                    | 无                                   | 存入PC + 8                           | 无                                      | 存入PC + 8                           | 将跳转前的 PC + 8 写入 31 号 ra 寄存器                |
| 跳转 R 型指令 | 从 PC 寄存器取地址，根据地址从 IM 获得指令编码 | 存入指令    | 通过多选器将 rs 寄存器的数据作为下一周期的 PC 写入           | 无                                            | 无                                   | 无                                   | 无                                      | 无                                   | 无                                                    |



### 译码器

- #### 控制器

  - |              | **cal_r**     | **cal_i**     | **load**         | **store**    | **mult_div** | mf             | mt    | **branch**        | **jal**        | **jr**    | **nop** |
    | ------------ | ------------- | ------------- | ---------------- | ------------ | ------------ | :------------- | ----- | :---------------- | -------------- | --------- | ------- |
    | **RegDst**   | **01(Rd)**    | **00(Rt)**    | **00**           | **x**        | **x**        | **01**         | **x** | **x**             | **10(Reg31)**  | **00**    | **x**   |
    | **MemtoReg** | **000(ALU)**  | **根据指令**  | **001(DM)**      | **x**        | **x**        | **100(HI/LO)** | **x** | **x**             | **011(Adder)** | **00**    | **x**   |
    | **Regwrite** | **1**         | **1**         | **1**            | **0**        | **0**        | **1**          | **0** | **0**             | **1**          | **0**     | **x**   |
    | **ALUop**    | **根据指令**  | **根据指令**  | **010(加)**      | **010(加)**  | **x**        | **x**          | **x** | **110(减)**       | **x**          | **x**     | **x**   |
    | **ALUsrc**   | **0(Rdata2)** | **1(EXT)**    | **1**            | **1**        | **0**        | **x**          | **x** | **0**             | **x**          | **x**     | **x**   |
    | **Memwrite** | **0**         | **0**         | **0**            | **根据指令** | **0**        | **0**          | **0** | **0**             | **x**          | **x**     | **x**   |
    | **Branch**   | **x**         | **x**         | **x**            | **x**        | **x**        | **x**          | **x** | **1(beq)/4(bne)** | **2(jal)**     | **3(jr)** | **x**   |
    | **EXT**      | **x**         | **01(0扩展)** | **00(符号扩展)** | **00**       | **x**        | **x**          | **x** | **00**            | **00**         | **x**     | **x**   |
    | **Shift**    | **x**         | **根据指令**  | **x**            | **x**        | **x**        | **x**          | **x** | **x**             | **x**          | **x**     | **x**   |




- #### 乘除控制

  |             | **mult_div** | mf           | mt           |
  | ----------- | ------------ | ------------ | ------------ |
  | **MDop**    | **根据指令** | **根据指令** | **x**        |
  | **MFsrc**   | **x**        | **根据指令** | **x**        |
  | **MTDst**   | **x**        | **x**        | **根据指令** |
  | **MDwrite** | **0**        | **0**        | **1**        |



- #### 具体指令

  > ### **cal_r**
  >
  > | **opcode** | **000000** | **000000** | **000000** | **000000** | **000000** | **000000** |
  > | ---------- | ---------- | ---------- | ---------- | ---------- | ---------- | ---------- |
  > | **funct**  | **100000** | **100010** | **100100** | **100101** | **101010** | **101011** |
  > |            | **add**    | **sub**    | **and**    | **or**     | **slt**    | **sltu**   |
  > | **ALUop**  | **010**    | **110**    | **000**    | **001**    | **011**    | **100**    |
  >
  > ### **cal_i**
  >
  > | **opcode**   | **001101** | **001100** | **001000** | **001111** |
  > | ------------ | ---------- | ---------- | ---------- | ---------- |
  > |              | **ori**    | **andi**   | **addi**   | **lui**    |
  > | **MemtoReg** | **000**    | **000**    | **000**    | **010**    |
  > | **ALUop**    | **001**    | **000**    | **010**    | **x**      |
  > | **Shift**    | **x**      | **x**      | **x**      | **1**      |
  >
  > ### **load**
  >
  > | **opcode** | **100011** | 100001 | 100000 |
  > | ---------- | ---------- | ------ | ------ |
  > |            | **lw**     | **lh** | **lb** |
  > |            |            |        |        |
  >
  > ### **store**
  >
  > | **opcode** | **101011** | 101001 | 101000 |
  > | ---------- | ---------- | ------ | ------ |
  > |            | **sw**     | **sh** | **sb** |
  > |            |            |        |        |
  >
  > ### mult_div
  >
  > | **opcode** | **000000** | **000000** | **000000** | **000000** |
  > | ---------- | ---------- | ---------- | ---------- | ---------- |
  > | **funct**  | **011000** | **011001** | **011010** | **011011** |
  > |            | **mult**   | **multu**  | **div**    | **divu**   |
  > | **MDop**   | **001**    | **010**    | **011**    | **100**    |
  >
  > ### **mf**
  >
  > | **opcode** | **000000** | **000000** |
  > | ---------- | ---------- | ---------- |
  > | **funct**  | **010000** | **010010** |
  > |            | **mfhi**   | **mflo**   |
  > | **MFsrc**  | **0**      | **1**      |
  >
  > ### **mt**
  >
  > | **opcode** | **000000** | **000000** |
  > | ---------- | ---------- | ---------- |
  > | **funct**  | **010001** | **010011** |
  > |            | **mthi**   | **mtlo**   |
  > | **MTDst**  | **0**      | **1**      |
  >
  > 
  >
  > ### **branch**
  >
  > | **opcode** | **000100** | **000101** |
  > | ---------- | ---------- | ---------- |
  > |            | **beq**    | **bne**    |
  > |            |            |            |
  >
  > ### **jal**
  >
  > | **opcode** | **000011** |
  > | ---------- | ---------- |
  > |            | **jal**    |
  >
  > ### **jr**
  >
  > | **opcode** | **000000** |
  > | ---------- | ---------- |
  > | **funct**  | **001000** |
  > |            | **jr**     |

### 乘除模块

- #### 信号

  > #### Start
  >
  > - **只能有效 1 个时钟周期**
  > - 启动乘除法运算。
  >
  > #### Busy
  >
  > - 通过 Busy 输出标志来反映执行乘除法的延迟

- #### 寄存器

> #### HI 
>
> #### LO

- #### 行为

  > - 自 Start 信号有效后的第 1 个 clock 上升沿开始，乘除法部件开始执行运算，同时将 Busy 置位为 1。
  > - 在运算结果保存到 HI 寄存器和 LO 寄存器后，Busy 位清除为 0。
  > - 当 Busy 信号或 Start 信号为 1 时，`mult, multu, div, divu, mfhi, mflo, mthi, mtlo` 等乘除法相关的指令均被阻塞在 D 流水级。
  > - 数据写入 HI 寄存器或 LO 寄存器，均只需 1 个时钟周期。

### 字节使能

`m_data_byteen[3:0]` 是字节使能信号，其最高位到最低位分别与 `m_data_wdata` 的 `[31:24]`、`[23:16]`、`[15:8]` 及 `[7:0]` 对应（即一位对应一个字节）。

例如，若 `m_data_byteen[3]` 为 1，则 `m_data_wdata[31:24]` 会被写入到 `m_data_addr` 所指向 word 的 `[31:24]`，依此类推。

若 `m_data_byteen` 的任意一位为 1，则代表当前需要写入内存，也就是说可以用 `|m_data_byteen` 代替数据存储器的写使能信号。

`m_data_byteen[3:0]` 主要用于支持 `sb`、`sh` 这两条指令。当处理器执行 `sb`、`sh` 指令时，只要对 EX/MEM 保存的 ALU 计算结果即 32 位地址的低两位进行解读，产生相应的 `m_data_byteen` 信号，就可以“通知” Testbench 中的 DM 该写入哪些字节，具体规则如下：

> ### sw 指令：向 GPR[rt] 写入对应的字
>
> | 地址[1:0] | m_data_byteen [3:0] |                             用途                             |
> | :-------: | :-----------------: | :----------------------------------------------------------: |
> |    XX     |        1111         | `m_data_wdata[31:24]` 写入 byte3 `m_data_wdata[23:16]` 写入 byte2 `m_data_wdata[15:8]` 写入 byte1 `m_data_wdata[7:0]` 写入 byte0 |
>
> ### sh 指令：向 GPR[rt]15:0 写入对应的半字
>
> | 地址[1:0] | m_data_byteen [3:0] |                             用途                             |
> | :-------: | :-----------------: | :----------------------------------------------------------: |
> |    0X     |        0011         | `m_data_wdata[15:8]` 写入 byte1 `m_data_wdata[7:0]` 写入 byte0 |
> |    1X     |        1100         | `m_data_wdata[31:24]` 写入 byte3 `m_data_wdata[23:16]` 写入 byte2 |
>
> ### sb 指令：向 GPR[rt]7:0 写入对应的字节
>
> | 地址[1:0] | m_data_byteen [3:0] |               用途               |
> | :-------: | :-----------------: | :------------------------------: |
> |    00     |        0001         |  `m_data_wdata[7:0]` 写入 byte0  |
> |    01     |        0010         | `m_data_wdata[15:8]` 写入 byte1  |
> |    10     |        0100         | `m_data_wdata[23:16]` 写入 byte2 |
> |    11     |        1000         | `m_data_wdata[31:24]` 写入 byte3 |
>
> BE 扩展模块需放在与数据存储器交互数据之前。显然，BE 扩展功能部件还需要有来自控制器的控制信号。

### 数据扩展模块

对于 `lb`、`lh` 来说，我们需要额外增加一个数据扩展模块。这个模块把从数据存储器读出的数据做符号扩展。

以 `lb` 为例，数据扩展模块输入数据寄存器的 32 位数据，根据 ALU 计算出来的地址最低 2 位从中取出**特定的字节**，并以该字节的最高位为符号位做符号扩展。

参考的接口定义如下：

|   信号名   | 方向 | 描述                                                         |
| :--------: | :--: | :----------------------------------------------------------- |
|   A[1:0]   |  I   | 最低两位的地址                                               |
| Din[31:0]  |  I   | 输入的 32 位数据                                             |
|  Op[2:0]   |  I   | 数据扩展控制码 000：无扩展 001：无符号字节数据扩展 010：符号字节数据扩展 011：无符号半字数据扩展 100：符号半字数据扩展 |
| Dout[31:0] |  O   | 扩展后的 32 位数据                                           |

### 冒险

- #### 类型

> #### 结构冒险
>
> - 不同指令同时需要使用同一资源
>
> #### 控制冒险
>
> - 分支指令（如 beq ）的判断结果会影响接下来指令的执行流
>
> #### 数据冒险
>
> - 后面指令需求的数据，正好就是前面指令供给的数据，而后面指令在需要使用数据时，前面供给的数据还没有存入寄存器堆，从而导致后面的指令不能正常地读取到正确的数据

- #### 	解决办法

  > #### 阻塞
  >
  > - 在 D 级阻塞的时候，像下一流水级传递的指令不应当是 D 级指令，否则 D 级指令还是会向下一流水级传递。所以我们应当插入“指令气泡（bubble）”，也就是 nop 空指令来避免这种情况。实现 CPU 流水级的“空转”
  >
  > #### 提前分支判断
  >
  > - 将分支判断提前到 D 级
  >
  > #### 延迟槽
  >
  > - 延迟槽是基本上不需要实现的，也就是说，只要不考虑 F 级指令的作废问题，就是实现了延迟槽。唯一需要变更的是，**对于 jal 指令，应当向 31 号寄存器写入 D_PC + 8 或者 F_PC + 4（当 jal 指令在 D 级时）**
  >
  > #### 转发
  >
  > - 数据并非一定要等到写入寄存器堆中才可以被使用，直接从后面的流水级的供给者把计算结果发送到前面流水级的需求者来引用
  >
  > - **AT 法**
  >
  >   - **A模型**
  >
  >     A 模型描述的是一个很显然的事情，就是需求者和供给者转发的数据必须是同一个寄存器的值。
  >
  >     我们的 A 指 Address，也就是**寄存器的地址**（编号）。在转发的时候需要检验需求者和供给者的对应的 A值是否相等，且不为 0.
  >
  >   - **T模型**
  >
  >     **需求时间-供给时间模型**
  >
  >     对于某一个指令的某一个数据需求，我们定义**需求时间 T*use***为：这条指令**位于 D 级的时候**，再经过多少个时钟周期就必须要使用相应的数据。
  >
  >
  >     Tuse的两条性质：
  >     
  >     - Tuse是一个定值，每个指令的Tuse 是一定的；
  >     - 一个指令可以有两个Tuse 值。
  >     
  >     对于某个指令的数据产出，我们定义供给时间Tnew 为：位于某个流水级的某个指令，它经过多少个时钟周期可以算出结果并且存储到流水级寄存器。
  >     
  >     Tnew的两条性质：
  >     
  >     - Tnew 是一个动态值，每个指令处于流水线不同阶段有不同的 Tnew值；
  >     - 一个指令在一个时刻至多有一个 Tnew值（一个指令至多写一个寄存器）
  >
  >   - **结论**
  >
  >     当 T*use* ≥T*new*，说明需要的数据可以及时算出，可以通过**转发**来解决。
  >
  >     当 T*use* <T*new*，说明需要的数据不能及时算出，必须**阻塞**流水线解决。
  >
  > - **各指令的T*use* ，T*new***
  >
  >   |               | Rs_T*use* | Rt_Tuse | E_T*new* | M_T*new* | W_T*new* |
  >   | ------------- | --------- | ------- | -------- | -------- | -------- |
  >   | cal_r         | 1         | 1       | 1        | 0        | 0        |
  >   | cal_i         | 1         | 1       | 1        | 0        | 0        |
  >   | Load          | 1         | 0       | 2        | 1        | 0        |
  >   | Store         | 1         | 2       | 1        | 0        | 0        |
  >   | 跳转 B 型指令 | 0         | 0       | 0        | 0        | 0        |
  >   | 跳转 J 型指令 | 0         | 0       | 0        | 0        | 0        |
  >   | 跳转 R 型指令 | 0         | 0       | 0        | 0        | 0        |
  >   | MF            | 0         | 0       | 1        | 0        | 0        |
  >   | MT            | 1         | 0       | 1        | 0        | 0        |
  >
  >   我们知道，当 T*use* ≥T*new* 时，可以通过转发解决；当 T*use* <T*new*必须阻塞流水线。
  >
  >   根据上述的  T*use*和T*new* 的值，我们做出策略矩阵，其中 F 表示转发，S 表示暂停：
  >
  >   ![image-20231112131426278](C:\Users\86139\AppData\Roaming\Typora\typora-user-images\image-20231112131426278.png)
  >
  >   根据上表，可以看出只有四种情况需要阻塞：
  >
  >   -  E_T*new*=2  ,  T*use*=0
  >   -  E_T*new*=1  ,  T*use*=0
  >   -  M_T*new*=1  ,  T*use*=0
  >   -  E_T*new*=2  ,  T*use*=1
  >
  >   除了这四种，剩下的情况就是需要转发的了。在转发中，我们需要特别注意**转发的优先级问题和 rt 域有效性问题**。
  >
  >   **转发的优先级**
  >
  >   - 我们要选择流水线中**靠前的“新鲜”的数据**进行转发
  >
  >   **rt 域有效性问题**
  >
  >   - 指有些指令的 rt 域不是用来表示读寄存器编号的，比如 j 指令没有 rt 域、ori 指令的 rt 域表示写入寄存器的编号，那么我们是否需要对这些指令进行特判呢？答案是不需要。对于 rt 域无效的指令，即使我们转发了相应的数据，也不会影响流水线的正确性，因此**无需特判**。
  >
  >   为解决流水线数据冒险，我们可以单独设计一个冒险控制模块，输入用于判断暂停和转发的 A 和 T 信号，输出暂停和转发的控制信号，下面让我们一起来分析该模块内部的逻辑。
  >
  > - **暂停**
  >
  >   我们可以根据T*use* 和T*new*值的不同组合构造出 4 种暂停信号。当然除了上述 **T 的条件，暂停时还需要满足 A 的条件**（即读寄存器和写寄存器编号相同且不为 0、写寄存器信号有效）。最后总的暂停信号把两个寄存器分别的暂停信号或起来即可。
  >
  >   简单起见，我们约定暂停只发生在 D 级，因此当暂停信号有效时，我们需要保持 D 级流水寄存器，清空 E 级流水寄存器。
  >
  > - **转发**
  >
  >   我们首先要在需要转发的点位放一个多路选择器，可以让 0 路对应原始数据，剩下的路按照数据优先级从低到高排列，然后利用一个转发控制信号选择正确的值。转发控制信号在冒险控制模块内生成，具体的判断条件是：**读寄存器和写寄存器编号相同且不为 0、写寄存器信号有效（A 条件）以及转发流水级 T*new*=0（T 条件，表示此时数据已经准备好了）**。

- #### 解决冒险的流水线实现

  > #### 译码器的实现
  >
  > - 在译码的时候，不能只译码出指令信息，还需要译码出指令相关的 AT 信息。只有译码出了 AT 信息，才可以帮助我们进行流水线的决策。
  > - 采用集中式译码的时候，AT 信息只在 D 级被译码了一次，但是同一个指令的 AT 值在不同的流水线阶段可能会发生变化，所以这就要求我们应当在流水线寄存器中完成流水级间的变化，比如某种实现的 Tnew = max{Next-Tnew-1 , 0} 。也可以不在流水线寄存器中完成，而是开辟一个新的功能单元完成
  > - 对于分布式译码，因为 AT 信息在每个流水线都被译码，所以就不存在传递变化的问题，但是译码器就必须知道自己所在的流水级，才能给出对应的正确的 AT 值。
  >
  > #### 阻塞的实现
  >
  > - 当一个指令到达 D 级后，我们需要将它的T*use*值与后面每一级的 T*new*进行比较（当然还有 A 值的校验），当 T*use* <T*new* 时，我们需要阻塞流水线。
  >
  > - 阻塞的实现需要改造流水线寄存器和 PC ，我们需要让它们具有以下功能：
  >
  >   - 冻结 PC 的值；
  >   - 冻结 D 级流水线寄存器的值；
  >   - 将 E 级流水线寄存器清零（这等价于插入了一个 nop 指令）。
  >
  >   此外，还有一个考虑，就是**复位信号和阻塞信号的优先级问题**。请仔细设计信号的优先级来保证流水线的正确性
  >
  > #### 内部转发的实现
  >
  > - 对 GPR 采用**内部转发**机制.也就是说，当前 GPR 被写入的值会即时反馈到读取端上。
  > - 具体的说，当读寄存器时的地址与同周期写寄存器的地址相同时，我们将读取的内容改为写寄存器的内容，而不是该地址可以索引到的寄存器文件中的值。
  >
  > #### 转发的实现
  >
  > - 当一个指令到达 D 级后，我们需要将它的T*use*值与后面每一级的 T*new*进行比较（当然还有 *A* 值的校验），当 T*use* ≥T*new* 时，我们需要进行转发。
  > - 为了实现转发，我们需要两种多路选择器 MUX，分别对应转发的供给者和需求者
  >   - 这是第一种MUX，输入是流水线寄存器的输出，输出是当前指令对应的写数据。
  >   - 这是第二种 MUX，输入是各级的第一种 MUX 的输出，输出是当前正确（或者可以容忍的错误）的读数据。
  >
  > #### 控制器的实现
  >
  > - 我们解决冒险需要进行 AT 值的比较判断，并需要根据判断的结果产生特定的控制信息。这些功能要求我们丰富我们的控制器，使其可以支持这些功能。
  > - 我们的控制器需要产生的信号包括但不限于**冻结信号，刷新信号，供给者选择器信号，需求者选择器信号**等。



## 具体部件

- ### Controller（控制器，根据 splitter 得到的 6 位 funct 码和 6 位 instr_index 码确定指令的类型并输出对应的控制信号）

  - 控制器的设计，从最基本的层面来说，是一个**译码**的过程，将每一条机器指令中包含的信息，转化为给 CPU 各部分的控制信号

  - assign疯狂赋值

  - 指令的opcode和funct



- ### Datapath

  - PC

    - 初始化，起始地址 0x00003000
    - 同步复位
    - 根据PC_sel确定下一条指令地址

    | 指令   | PC_sel | Next_PC                                     |
    | ------ | ------ | ------------------------------------------- |
    | 无     | 00     | PC+4                                        |
    | branch | 01     | PC + 4 + Shift_out                          |
    | jal    | 10     | {{PC[31 : 28]}, instruction[25:0], {2'b00}} |
    | jr     | 11     | grf(Registe[31])                            |

    

  - IM

    - 根据地址输出指令

    - assign

    - 初始化，起始地址 0x00000000
    - 容量为 4096 × 32bit。

    

  - GRF

    - 寄存器堆
    - 同步复位

    - assign读，always写
    - 初始化
    - 0寄存器特判

    

  - ALU

    - assign疯狂输出
    - zero判定

    

  - DM

    - 注意读写判定
    - assign读，always写
    - 同步复位,复位值为 0x00000000
    - 初始化
    - 容量为 3072 × 32bit

    

  - EXT

    - assign输出
    - 注意拓展类型

    

  - Shift

    - assign输出

    

  - branch

    - assign输出
    - 注意各个跳转指令判定

### 模块

- PC
- IM

- GRF：寄存器相关
  - Reg1,Reg2
  - Wreg
  - Wdata
- ALU：运算
- DM：内存
- EXT：位扩展
- Shift：移位
- Controller：控制器

### 结构图

![image-20231121223103227](C:\Users\86139\AppData\Roaming\Typora\typora-user-images\image-20231121223103227.png)
