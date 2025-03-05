/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/86139/Desktop/courses/co/P6/CPU/branch.v";
static int ng1[] = {5, 0};
static int ng2[] = {1, 0};
static int ng3[] = {4, 0};
static unsigned int ng4[] = {1U, 0U};
static int ng5[] = {2, 0};
static unsigned int ng6[] = {2U, 0U};
static int ng7[] = {3, 0};
static unsigned int ng8[] = {3U, 0U};
static unsigned int ng9[] = {4U, 0U};
static unsigned int ng10[] = {0U, 0U};



static void NetDecl_30_0(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 1368U);
    t4 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t3 + 4);
    t6 = (t4 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t4);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t2);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t2);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB7;

LAB4:    if (t16 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t5) = 1;

LAB7:    t20 = (t0 + 4520);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memset(t24, 0, 8);
    t25 = 1U;
    t26 = t25;
    t27 = (t5 + 4);
    t28 = *((unsigned int *)t5);
    t25 = (t25 & t28);
    t29 = *((unsigned int *)t27);
    t26 = (t26 & t29);
    t30 = (t24 + 4);
    t31 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t31 | t25);
    t32 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t32 | t26);
    xsi_driver_vfirst_trans(t20, 0, 0U);
    t33 = (t0 + 4392);
    *((int *)t33) = 1;

LAB1:    return;
LAB6:    t19 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB7;

}

static void Cont_34_1(char *t0)
{
    char t4[8];
    char t20[8];
    char t34[8];
    char t41[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    int t65;
    int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    char *t83;
    unsigned int t84;
    unsigned int t85;
    char *t86;

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB7;

LAB4:    if (t16 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t4) = 1;

LAB7:    memset(t20, 0, 8);
    t21 = (t4 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (~(t22));
    t24 = *((unsigned int *)t4);
    t25 = (t24 & t23);
    t26 = (t25 & 1U);
    if (t26 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t21) != 0)
        goto LAB10;

LAB11:    t28 = (t20 + 4);
    t29 = *((unsigned int *)t20);
    t30 = *((unsigned int *)t28);
    t31 = (t29 || t30);
    if (t31 > 0)
        goto LAB12;

LAB13:    memcpy(t41, t20, 8);

LAB14:    t73 = (t0 + 4584);
    t74 = (t73 + 56U);
    t75 = *((char **)t74);
    t76 = (t75 + 56U);
    t77 = *((char **)t76);
    memset(t77, 0, 8);
    t78 = 1U;
    t79 = t78;
    t80 = (t41 + 4);
    t81 = *((unsigned int *)t41);
    t78 = (t78 & t81);
    t82 = *((unsigned int *)t80);
    t79 = (t79 & t82);
    t83 = (t77 + 4);
    t84 = *((unsigned int *)t77);
    *((unsigned int *)t77) = (t84 | t78);
    t85 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t85 | t79);
    xsi_driver_vfirst_trans(t73, 0, 0);
    t86 = (t0 + 4408);
    *((int *)t86) = 1;

LAB1:    return;
LAB6:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t20) = 1;
    goto LAB11;

LAB10:    t27 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB11;

LAB12:    t32 = (t0 + 2168U);
    t33 = *((char **)t32);
    memset(t34, 0, 8);
    t32 = (t33 + 4);
    t35 = *((unsigned int *)t32);
    t36 = (~(t35));
    t37 = *((unsigned int *)t33);
    t38 = (t37 & t36);
    t39 = (t38 & 1U);
    if (t39 != 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t32) != 0)
        goto LAB17;

LAB18:    t42 = *((unsigned int *)t20);
    t43 = *((unsigned int *)t34);
    t44 = (t42 & t43);
    *((unsigned int *)t41) = t44;
    t45 = (t20 + 4);
    t46 = (t34 + 4);
    t47 = (t41 + 4);
    t48 = *((unsigned int *)t45);
    t49 = *((unsigned int *)t46);
    t50 = (t48 | t49);
    *((unsigned int *)t47) = t50;
    t51 = *((unsigned int *)t47);
    t52 = (t51 != 0);
    if (t52 == 1)
        goto LAB19;

LAB20:
LAB21:    goto LAB14;

LAB15:    *((unsigned int *)t34) = 1;
    goto LAB18;

LAB17:    t40 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB18;

LAB19:    t53 = *((unsigned int *)t41);
    t54 = *((unsigned int *)t47);
    *((unsigned int *)t41) = (t53 | t54);
    t55 = (t20 + 4);
    t56 = (t34 + 4);
    t57 = *((unsigned int *)t20);
    t58 = (~(t57));
    t59 = *((unsigned int *)t55);
    t60 = (~(t59));
    t61 = *((unsigned int *)t34);
    t62 = (~(t61));
    t63 = *((unsigned int *)t56);
    t64 = (~(t63));
    t65 = (t58 & t60);
    t66 = (t62 & t64);
    t67 = (~(t65));
    t68 = (~(t66));
    t69 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t69 & t67);
    t70 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t70 & t68);
    t71 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t71 & t67);
    t72 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t72 & t68);
    goto LAB21;

}

static void Cont_35_2(char *t0)
{
    char t4[8];
    char t20[8];
    char t32[8];
    char t41[8];
    char t49[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    int t73;
    int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    char *t82;
    char *t83;
    char *t84;
    char *t85;
    unsigned int t86;
    unsigned int t87;
    char *t88;
    unsigned int t89;
    unsigned int t90;
    char *t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;

LAB0:    t1 = (t0 + 3824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB7;

LAB4:    if (t16 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t4) = 1;

LAB7:    memset(t20, 0, 8);
    t21 = (t4 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (~(t22));
    t24 = *((unsigned int *)t4);
    t25 = (t24 & t23);
    t26 = (t25 & 1U);
    if (t26 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t21) != 0)
        goto LAB10;

LAB11:    t28 = (t20 + 4);
    t29 = *((unsigned int *)t20);
    t30 = *((unsigned int *)t28);
    t31 = (t29 || t30);
    if (t31 > 0)
        goto LAB12;

LAB13:    memcpy(t49, t20, 8);

LAB14:    t81 = (t0 + 4648);
    t82 = (t81 + 56U);
    t83 = *((char **)t82);
    t84 = (t83 + 56U);
    t85 = *((char **)t84);
    memset(t85, 0, 8);
    t86 = 1U;
    t87 = t86;
    t88 = (t49 + 4);
    t89 = *((unsigned int *)t49);
    t86 = (t86 & t89);
    t90 = *((unsigned int *)t88);
    t87 = (t87 & t90);
    t91 = (t85 + 4);
    t92 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t92 | t86);
    t93 = *((unsigned int *)t91);
    *((unsigned int *)t91) = (t93 | t87);
    xsi_driver_vfirst_trans(t81, 0, 0);
    t94 = (t0 + 4424);
    *((int *)t94) = 1;

LAB1:    return;
LAB6:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t20) = 1;
    goto LAB11;

LAB10:    t27 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB11;

LAB12:    t33 = (t0 + 2168U);
    t34 = *((char **)t33);
    memset(t32, 0, 8);
    t33 = (t34 + 4);
    t35 = *((unsigned int *)t33);
    t36 = (~(t35));
    t37 = *((unsigned int *)t34);
    t38 = (t37 & t36);
    t39 = (t38 & 1U);
    if (t39 != 0)
        goto LAB18;

LAB16:    if (*((unsigned int *)t33) == 0)
        goto LAB15;

LAB17:    t40 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t40) = 1;

LAB18:    memset(t41, 0, 8);
    t42 = (t32 + 4);
    t43 = *((unsigned int *)t42);
    t44 = (~(t43));
    t45 = *((unsigned int *)t32);
    t46 = (t45 & t44);
    t47 = (t46 & 1U);
    if (t47 != 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t42) != 0)
        goto LAB21;

LAB22:    t50 = *((unsigned int *)t20);
    t51 = *((unsigned int *)t41);
    t52 = (t50 & t51);
    *((unsigned int *)t49) = t52;
    t53 = (t20 + 4);
    t54 = (t41 + 4);
    t55 = (t49 + 4);
    t56 = *((unsigned int *)t53);
    t57 = *((unsigned int *)t54);
    t58 = (t56 | t57);
    *((unsigned int *)t55) = t58;
    t59 = *((unsigned int *)t55);
    t60 = (t59 != 0);
    if (t60 == 1)
        goto LAB23;

LAB24:
LAB25:    goto LAB14;

LAB15:    *((unsigned int *)t32) = 1;
    goto LAB18;

LAB19:    *((unsigned int *)t41) = 1;
    goto LAB22;

LAB21:    t48 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t48) = 1;
    goto LAB22;

LAB23:    t61 = *((unsigned int *)t49);
    t62 = *((unsigned int *)t55);
    *((unsigned int *)t49) = (t61 | t62);
    t63 = (t20 + 4);
    t64 = (t41 + 4);
    t65 = *((unsigned int *)t20);
    t66 = (~(t65));
    t67 = *((unsigned int *)t63);
    t68 = (~(t67));
    t69 = *((unsigned int *)t41);
    t70 = (~(t69));
    t71 = *((unsigned int *)t64);
    t72 = (~(t71));
    t73 = (t66 & t68);
    t74 = (t70 & t72);
    t75 = (~(t73));
    t76 = (~(t74));
    t77 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t77 & t75);
    t78 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t78 & t76);
    t79 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t79 & t75);
    t80 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t80 & t76);
    goto LAB25;

}

static void Cont_37_3(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t22[8];
    char t36[8];
    char t43[8];
    char t75[8];
    char t90[8];
    char t106[8];
    char t118[8];
    char t127[8];
    char t135[8];
    char t167[8];
    char t175[8];
    char t219[8];
    char t220[8];
    char t223[8];
    char t255[8];
    char t256[8];
    char t259[8];
    char t291[8];
    char t292[8];
    char t295[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    int t67;
    int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    char *t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    char *t88;
    char *t89;
    char *t91;
    char *t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    char *t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    char *t113;
    char *t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    char *t119;
    char *t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    char *t126;
    char *t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    char *t134;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    char *t139;
    char *t140;
    char *t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    char *t149;
    char *t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    int t159;
    int t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    char *t168;
    unsigned int t169;
    unsigned int t170;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    char *t174;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    char *t179;
    char *t180;
    char *t181;
    unsigned int t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t185;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    char *t189;
    char *t190;
    unsigned int t191;
    unsigned int t192;
    unsigned int t193;
    int t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    int t198;
    unsigned int t199;
    unsigned int t200;
    unsigned int t201;
    unsigned int t202;
    char *t203;
    unsigned int t204;
    unsigned int t205;
    unsigned int t206;
    unsigned int t207;
    unsigned int t208;
    char *t209;
    char *t210;
    unsigned int t211;
    unsigned int t212;
    unsigned int t213;
    char *t214;
    unsigned int t215;
    unsigned int t216;
    unsigned int t217;
    unsigned int t218;
    char *t221;
    char *t222;
    char *t224;
    char *t225;
    unsigned int t226;
    unsigned int t227;
    unsigned int t228;
    unsigned int t229;
    unsigned int t230;
    unsigned int t231;
    unsigned int t232;
    unsigned int t233;
    unsigned int t234;
    unsigned int t235;
    unsigned int t236;
    unsigned int t237;
    char *t238;
    char *t239;
    unsigned int t240;
    unsigned int t241;
    unsigned int t242;
    unsigned int t243;
    unsigned int t244;
    char *t245;
    char *t246;
    unsigned int t247;
    unsigned int t248;
    unsigned int t249;
    char *t250;
    unsigned int t251;
    unsigned int t252;
    unsigned int t253;
    unsigned int t254;
    char *t257;
    char *t258;
    char *t260;
    char *t261;
    unsigned int t262;
    unsigned int t263;
    unsigned int t264;
    unsigned int t265;
    unsigned int t266;
    unsigned int t267;
    unsigned int t268;
    unsigned int t269;
    unsigned int t270;
    unsigned int t271;
    unsigned int t272;
    unsigned int t273;
    char *t274;
    char *t275;
    unsigned int t276;
    unsigned int t277;
    unsigned int t278;
    unsigned int t279;
    unsigned int t280;
    char *t281;
    char *t282;
    unsigned int t283;
    unsigned int t284;
    unsigned int t285;
    char *t286;
    unsigned int t287;
    unsigned int t288;
    unsigned int t289;
    unsigned int t290;
    char *t293;
    char *t294;
    char *t296;
    char *t297;
    unsigned int t298;
    unsigned int t299;
    unsigned int t300;
    unsigned int t301;
    unsigned int t302;
    unsigned int t303;
    unsigned int t304;
    unsigned int t305;
    unsigned int t306;
    unsigned int t307;
    unsigned int t308;
    unsigned int t309;
    char *t310;
    char *t311;
    unsigned int t312;
    unsigned int t313;
    unsigned int t314;
    unsigned int t315;
    unsigned int t316;
    char *t317;
    char *t318;
    unsigned int t319;
    unsigned int t320;
    unsigned int t321;
    char *t322;
    unsigned int t323;
    unsigned int t324;
    unsigned int t325;
    unsigned int t326;
    char *t327;
    char *t328;
    char *t329;
    char *t330;
    char *t331;
    char *t332;
    unsigned int t333;
    unsigned int t334;
    char *t335;
    unsigned int t336;
    unsigned int t337;
    char *t338;
    unsigned int t339;
    unsigned int t340;
    char *t341;

LAB0:    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1048U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t22, 0, 8);
    t23 = (t6 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t23) != 0)
        goto LAB10;

LAB11:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB12;

LAB13:    memcpy(t43, t22, 8);

LAB14:    memset(t75, 0, 8);
    t76 = (t43 + 4);
    t77 = *((unsigned int *)t76);
    t78 = (~(t77));
    t79 = *((unsigned int *)t43);
    t80 = (t79 & t78);
    t81 = (t80 & 1U);
    if (t81 != 0)
        goto LAB22;

LAB23:    if (*((unsigned int *)t76) != 0)
        goto LAB24;

LAB25:    t83 = (t75 + 4);
    t84 = *((unsigned int *)t75);
    t85 = (!(t84));
    t86 = *((unsigned int *)t83);
    t87 = (t85 || t86);
    if (t87 > 0)
        goto LAB26;

LAB27:    memcpy(t175, t75, 8);

LAB28:    memset(t4, 0, 8);
    t203 = (t175 + 4);
    t204 = *((unsigned int *)t203);
    t205 = (~(t204));
    t206 = *((unsigned int *)t175);
    t207 = (t206 & t205);
    t208 = (t207 & 1U);
    if (t208 != 0)
        goto LAB58;

LAB59:    if (*((unsigned int *)t203) != 0)
        goto LAB60;

LAB61:    t210 = (t4 + 4);
    t211 = *((unsigned int *)t4);
    t212 = *((unsigned int *)t210);
    t213 = (t211 || t212);
    if (t213 > 0)
        goto LAB62;

LAB63:    t215 = *((unsigned int *)t4);
    t216 = (~(t215));
    t217 = *((unsigned int *)t210);
    t218 = (t216 || t217);
    if (t218 > 0)
        goto LAB64;

LAB65:    if (*((unsigned int *)t210) > 0)
        goto LAB66;

LAB67:    if (*((unsigned int *)t4) > 0)
        goto LAB68;

LAB69:    memcpy(t3, t219, 8);

LAB70:    t328 = (t0 + 4712);
    t329 = (t328 + 56U);
    t330 = *((char **)t329);
    t331 = (t330 + 56U);
    t332 = *((char **)t331);
    memset(t332, 0, 8);
    t333 = 7U;
    t334 = t333;
    t335 = (t3 + 4);
    t336 = *((unsigned int *)t3);
    t333 = (t333 & t336);
    t337 = *((unsigned int *)t335);
    t334 = (t334 & t337);
    t338 = (t332 + 4);
    t339 = *((unsigned int *)t332);
    *((unsigned int *)t332) = (t339 | t333);
    t340 = *((unsigned int *)t338);
    *((unsigned int *)t338) = (t340 | t334);
    xsi_driver_vfirst_trans(t328, 0, 2);
    t341 = (t0 + 4440);
    *((int *)t341) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t22) = 1;
    goto LAB11;

LAB10:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB11;

LAB12:    t34 = (t0 + 2008U);
    t35 = *((char **)t34);
    memset(t36, 0, 8);
    t34 = (t35 + 4);
    t37 = *((unsigned int *)t34);
    t38 = (~(t37));
    t39 = *((unsigned int *)t35);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t34) != 0)
        goto LAB17;

LAB18:    t44 = *((unsigned int *)t22);
    t45 = *((unsigned int *)t36);
    t46 = (t44 & t45);
    *((unsigned int *)t43) = t46;
    t47 = (t22 + 4);
    t48 = (t36 + 4);
    t49 = (t43 + 4);
    t50 = *((unsigned int *)t47);
    t51 = *((unsigned int *)t48);
    t52 = (t50 | t51);
    *((unsigned int *)t49) = t52;
    t53 = *((unsigned int *)t49);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB19;

LAB20:
LAB21:    goto LAB14;

LAB15:    *((unsigned int *)t36) = 1;
    goto LAB18;

LAB17:    t42 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t42) = 1;
    goto LAB18;

LAB19:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t49);
    *((unsigned int *)t43) = (t55 | t56);
    t57 = (t22 + 4);
    t58 = (t36 + 4);
    t59 = *((unsigned int *)t22);
    t60 = (~(t59));
    t61 = *((unsigned int *)t57);
    t62 = (~(t61));
    t63 = *((unsigned int *)t36);
    t64 = (~(t63));
    t65 = *((unsigned int *)t58);
    t66 = (~(t65));
    t67 = (t60 & t62);
    t68 = (t64 & t66);
    t69 = (~(t67));
    t70 = (~(t68));
    t71 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t71 & t69);
    t72 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t72 & t70);
    t73 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t73 & t69);
    t74 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t74 & t70);
    goto LAB21;

LAB22:    *((unsigned int *)t75) = 1;
    goto LAB25;

LAB24:    t82 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t82) = 1;
    goto LAB25;

LAB26:    t88 = (t0 + 1048U);
    t89 = *((char **)t88);
    t88 = ((char*)((ng3)));
    memset(t90, 0, 8);
    t91 = (t89 + 4);
    t92 = (t88 + 4);
    t93 = *((unsigned int *)t89);
    t94 = *((unsigned int *)t88);
    t95 = (t93 ^ t94);
    t96 = *((unsigned int *)t91);
    t97 = *((unsigned int *)t92);
    t98 = (t96 ^ t97);
    t99 = (t95 | t98);
    t100 = *((unsigned int *)t91);
    t101 = *((unsigned int *)t92);
    t102 = (t100 | t101);
    t103 = (~(t102));
    t104 = (t99 & t103);
    if (t104 != 0)
        goto LAB32;

LAB29:    if (t102 != 0)
        goto LAB31;

LAB30:    *((unsigned int *)t90) = 1;

LAB32:    memset(t106, 0, 8);
    t107 = (t90 + 4);
    t108 = *((unsigned int *)t107);
    t109 = (~(t108));
    t110 = *((unsigned int *)t90);
    t111 = (t110 & t109);
    t112 = (t111 & 1U);
    if (t112 != 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t107) != 0)
        goto LAB35;

LAB36:    t114 = (t106 + 4);
    t115 = *((unsigned int *)t106);
    t116 = *((unsigned int *)t114);
    t117 = (t115 || t116);
    if (t117 > 0)
        goto LAB37;

LAB38:    memcpy(t135, t106, 8);

LAB39:    memset(t167, 0, 8);
    t168 = (t135 + 4);
    t169 = *((unsigned int *)t168);
    t170 = (~(t169));
    t171 = *((unsigned int *)t135);
    t172 = (t171 & t170);
    t173 = (t172 & 1U);
    if (t173 != 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t168) != 0)
        goto LAB53;

LAB54:    t176 = *((unsigned int *)t75);
    t177 = *((unsigned int *)t167);
    t178 = (t176 | t177);
    *((unsigned int *)t175) = t178;
    t179 = (t75 + 4);
    t180 = (t167 + 4);
    t181 = (t175 + 4);
    t182 = *((unsigned int *)t179);
    t183 = *((unsigned int *)t180);
    t184 = (t182 | t183);
    *((unsigned int *)t181) = t184;
    t185 = *((unsigned int *)t181);
    t186 = (t185 != 0);
    if (t186 == 1)
        goto LAB55;

LAB56:
LAB57:    goto LAB28;

LAB31:    t105 = (t90 + 4);
    *((unsigned int *)t90) = 1;
    *((unsigned int *)t105) = 1;
    goto LAB32;

LAB33:    *((unsigned int *)t106) = 1;
    goto LAB36;

LAB35:    t113 = (t106 + 4);
    *((unsigned int *)t106) = 1;
    *((unsigned int *)t113) = 1;
    goto LAB36;

LAB37:    t119 = (t0 + 2008U);
    t120 = *((char **)t119);
    memset(t118, 0, 8);
    t119 = (t120 + 4);
    t121 = *((unsigned int *)t119);
    t122 = (~(t121));
    t123 = *((unsigned int *)t120);
    t124 = (t123 & t122);
    t125 = (t124 & 1U);
    if (t125 != 0)
        goto LAB43;

LAB41:    if (*((unsigned int *)t119) == 0)
        goto LAB40;

LAB42:    t126 = (t118 + 4);
    *((unsigned int *)t118) = 1;
    *((unsigned int *)t126) = 1;

LAB43:    memset(t127, 0, 8);
    t128 = (t118 + 4);
    t129 = *((unsigned int *)t128);
    t130 = (~(t129));
    t131 = *((unsigned int *)t118);
    t132 = (t131 & t130);
    t133 = (t132 & 1U);
    if (t133 != 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t128) != 0)
        goto LAB46;

LAB47:    t136 = *((unsigned int *)t106);
    t137 = *((unsigned int *)t127);
    t138 = (t136 & t137);
    *((unsigned int *)t135) = t138;
    t139 = (t106 + 4);
    t140 = (t127 + 4);
    t141 = (t135 + 4);
    t142 = *((unsigned int *)t139);
    t143 = *((unsigned int *)t140);
    t144 = (t142 | t143);
    *((unsigned int *)t141) = t144;
    t145 = *((unsigned int *)t141);
    t146 = (t145 != 0);
    if (t146 == 1)
        goto LAB48;

LAB49:
LAB50:    goto LAB39;

LAB40:    *((unsigned int *)t118) = 1;
    goto LAB43;

LAB44:    *((unsigned int *)t127) = 1;
    goto LAB47;

LAB46:    t134 = (t127 + 4);
    *((unsigned int *)t127) = 1;
    *((unsigned int *)t134) = 1;
    goto LAB47;

LAB48:    t147 = *((unsigned int *)t135);
    t148 = *((unsigned int *)t141);
    *((unsigned int *)t135) = (t147 | t148);
    t149 = (t106 + 4);
    t150 = (t127 + 4);
    t151 = *((unsigned int *)t106);
    t152 = (~(t151));
    t153 = *((unsigned int *)t149);
    t154 = (~(t153));
    t155 = *((unsigned int *)t127);
    t156 = (~(t155));
    t157 = *((unsigned int *)t150);
    t158 = (~(t157));
    t159 = (t152 & t154);
    t160 = (t156 & t158);
    t161 = (~(t159));
    t162 = (~(t160));
    t163 = *((unsigned int *)t141);
    *((unsigned int *)t141) = (t163 & t161);
    t164 = *((unsigned int *)t141);
    *((unsigned int *)t141) = (t164 & t162);
    t165 = *((unsigned int *)t135);
    *((unsigned int *)t135) = (t165 & t161);
    t166 = *((unsigned int *)t135);
    *((unsigned int *)t135) = (t166 & t162);
    goto LAB50;

LAB51:    *((unsigned int *)t167) = 1;
    goto LAB54;

LAB53:    t174 = (t167 + 4);
    *((unsigned int *)t167) = 1;
    *((unsigned int *)t174) = 1;
    goto LAB54;

LAB55:    t187 = *((unsigned int *)t175);
    t188 = *((unsigned int *)t181);
    *((unsigned int *)t175) = (t187 | t188);
    t189 = (t75 + 4);
    t190 = (t167 + 4);
    t191 = *((unsigned int *)t189);
    t192 = (~(t191));
    t193 = *((unsigned int *)t75);
    t194 = (t193 & t192);
    t195 = *((unsigned int *)t190);
    t196 = (~(t195));
    t197 = *((unsigned int *)t167);
    t198 = (t197 & t196);
    t199 = (~(t194));
    t200 = (~(t198));
    t201 = *((unsigned int *)t181);
    *((unsigned int *)t181) = (t201 & t199);
    t202 = *((unsigned int *)t181);
    *((unsigned int *)t181) = (t202 & t200);
    goto LAB57;

LAB58:    *((unsigned int *)t4) = 1;
    goto LAB61;

LAB60:    t209 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t209) = 1;
    goto LAB61;

LAB62:    t214 = ((char*)((ng4)));
    goto LAB63;

LAB64:    t221 = (t0 + 1048U);
    t222 = *((char **)t221);
    t221 = ((char*)((ng5)));
    memset(t223, 0, 8);
    t224 = (t222 + 4);
    t225 = (t221 + 4);
    t226 = *((unsigned int *)t222);
    t227 = *((unsigned int *)t221);
    t228 = (t226 ^ t227);
    t229 = *((unsigned int *)t224);
    t230 = *((unsigned int *)t225);
    t231 = (t229 ^ t230);
    t232 = (t228 | t231);
    t233 = *((unsigned int *)t224);
    t234 = *((unsigned int *)t225);
    t235 = (t233 | t234);
    t236 = (~(t235));
    t237 = (t232 & t236);
    if (t237 != 0)
        goto LAB74;

LAB71:    if (t235 != 0)
        goto LAB73;

LAB72:    *((unsigned int *)t223) = 1;

LAB74:    memset(t220, 0, 8);
    t239 = (t223 + 4);
    t240 = *((unsigned int *)t239);
    t241 = (~(t240));
    t242 = *((unsigned int *)t223);
    t243 = (t242 & t241);
    t244 = (t243 & 1U);
    if (t244 != 0)
        goto LAB75;

LAB76:    if (*((unsigned int *)t239) != 0)
        goto LAB77;

LAB78:    t246 = (t220 + 4);
    t247 = *((unsigned int *)t220);
    t248 = *((unsigned int *)t246);
    t249 = (t247 || t248);
    if (t249 > 0)
        goto LAB79;

LAB80:    t251 = *((unsigned int *)t220);
    t252 = (~(t251));
    t253 = *((unsigned int *)t246);
    t254 = (t252 || t253);
    if (t254 > 0)
        goto LAB81;

LAB82:    if (*((unsigned int *)t246) > 0)
        goto LAB83;

LAB84:    if (*((unsigned int *)t220) > 0)
        goto LAB85;

LAB86:    memcpy(t219, t255, 8);

LAB87:    goto LAB65;

LAB66:    xsi_vlog_unsigned_bit_combine(t3, 3, t214, 3, t219, 3);
    goto LAB70;

LAB68:    memcpy(t3, t214, 8);
    goto LAB70;

LAB73:    t238 = (t223 + 4);
    *((unsigned int *)t223) = 1;
    *((unsigned int *)t238) = 1;
    goto LAB74;

LAB75:    *((unsigned int *)t220) = 1;
    goto LAB78;

LAB77:    t245 = (t220 + 4);
    *((unsigned int *)t220) = 1;
    *((unsigned int *)t245) = 1;
    goto LAB78;

LAB79:    t250 = ((char*)((ng6)));
    goto LAB80;

LAB81:    t257 = (t0 + 1048U);
    t258 = *((char **)t257);
    t257 = ((char*)((ng7)));
    memset(t259, 0, 8);
    t260 = (t258 + 4);
    t261 = (t257 + 4);
    t262 = *((unsigned int *)t258);
    t263 = *((unsigned int *)t257);
    t264 = (t262 ^ t263);
    t265 = *((unsigned int *)t260);
    t266 = *((unsigned int *)t261);
    t267 = (t265 ^ t266);
    t268 = (t264 | t267);
    t269 = *((unsigned int *)t260);
    t270 = *((unsigned int *)t261);
    t271 = (t269 | t270);
    t272 = (~(t271));
    t273 = (t268 & t272);
    if (t273 != 0)
        goto LAB91;

LAB88:    if (t271 != 0)
        goto LAB90;

LAB89:    *((unsigned int *)t259) = 1;

LAB91:    memset(t256, 0, 8);
    t275 = (t259 + 4);
    t276 = *((unsigned int *)t275);
    t277 = (~(t276));
    t278 = *((unsigned int *)t259);
    t279 = (t278 & t277);
    t280 = (t279 & 1U);
    if (t280 != 0)
        goto LAB92;

LAB93:    if (*((unsigned int *)t275) != 0)
        goto LAB94;

LAB95:    t282 = (t256 + 4);
    t283 = *((unsigned int *)t256);
    t284 = *((unsigned int *)t282);
    t285 = (t283 || t284);
    if (t285 > 0)
        goto LAB96;

LAB97:    t287 = *((unsigned int *)t256);
    t288 = (~(t287));
    t289 = *((unsigned int *)t282);
    t290 = (t288 || t289);
    if (t290 > 0)
        goto LAB98;

LAB99:    if (*((unsigned int *)t282) > 0)
        goto LAB100;

LAB101:    if (*((unsigned int *)t256) > 0)
        goto LAB102;

LAB103:    memcpy(t255, t291, 8);

LAB104:    goto LAB82;

LAB83:    xsi_vlog_unsigned_bit_combine(t219, 3, t250, 3, t255, 3);
    goto LAB87;

LAB85:    memcpy(t219, t250, 8);
    goto LAB87;

LAB90:    t274 = (t259 + 4);
    *((unsigned int *)t259) = 1;
    *((unsigned int *)t274) = 1;
    goto LAB91;

LAB92:    *((unsigned int *)t256) = 1;
    goto LAB95;

LAB94:    t281 = (t256 + 4);
    *((unsigned int *)t256) = 1;
    *((unsigned int *)t281) = 1;
    goto LAB95;

LAB96:    t286 = ((char*)((ng8)));
    goto LAB97;

LAB98:    t293 = (t0 + 1048U);
    t294 = *((char **)t293);
    t293 = ((char*)((ng1)));
    memset(t295, 0, 8);
    t296 = (t294 + 4);
    t297 = (t293 + 4);
    t298 = *((unsigned int *)t294);
    t299 = *((unsigned int *)t293);
    t300 = (t298 ^ t299);
    t301 = *((unsigned int *)t296);
    t302 = *((unsigned int *)t297);
    t303 = (t301 ^ t302);
    t304 = (t300 | t303);
    t305 = *((unsigned int *)t296);
    t306 = *((unsigned int *)t297);
    t307 = (t305 | t306);
    t308 = (~(t307));
    t309 = (t304 & t308);
    if (t309 != 0)
        goto LAB108;

LAB105:    if (t307 != 0)
        goto LAB107;

LAB106:    *((unsigned int *)t295) = 1;

LAB108:    memset(t292, 0, 8);
    t311 = (t295 + 4);
    t312 = *((unsigned int *)t311);
    t313 = (~(t312));
    t314 = *((unsigned int *)t295);
    t315 = (t314 & t313);
    t316 = (t315 & 1U);
    if (t316 != 0)
        goto LAB109;

LAB110:    if (*((unsigned int *)t311) != 0)
        goto LAB111;

LAB112:    t318 = (t292 + 4);
    t319 = *((unsigned int *)t292);
    t320 = *((unsigned int *)t318);
    t321 = (t319 || t320);
    if (t321 > 0)
        goto LAB113;

LAB114:    t323 = *((unsigned int *)t292);
    t324 = (~(t323));
    t325 = *((unsigned int *)t318);
    t326 = (t324 || t325);
    if (t326 > 0)
        goto LAB115;

LAB116:    if (*((unsigned int *)t318) > 0)
        goto LAB117;

LAB118:    if (*((unsigned int *)t292) > 0)
        goto LAB119;

LAB120:    memcpy(t291, t327, 8);

LAB121:    goto LAB99;

LAB100:    xsi_vlog_unsigned_bit_combine(t255, 3, t286, 3, t291, 3);
    goto LAB104;

LAB102:    memcpy(t255, t286, 8);
    goto LAB104;

LAB107:    t310 = (t295 + 4);
    *((unsigned int *)t295) = 1;
    *((unsigned int *)t310) = 1;
    goto LAB108;

LAB109:    *((unsigned int *)t292) = 1;
    goto LAB112;

LAB111:    t317 = (t292 + 4);
    *((unsigned int *)t292) = 1;
    *((unsigned int *)t317) = 1;
    goto LAB112;

LAB113:    t322 = ((char*)((ng9)));
    goto LAB114;

LAB115:    t327 = ((char*)((ng10)));
    goto LAB116;

LAB117:    xsi_vlog_unsigned_bit_combine(t291, 3, t322, 3, t327, 3);
    goto LAB121;

LAB119:    memcpy(t291, t322, 8);
    goto LAB121;

}


extern void work_m_00000000003898652901_3685833879_init()
{
	static char *pe[] = {(void *)NetDecl_30_0,(void *)Cont_34_1,(void *)Cont_35_2,(void *)Cont_37_3};
	xsi_register_didat("work_m_00000000003898652901_3685833879", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000003898652901_3685833879.didat");
	xsi_register_executes(pe);
}
