.class public Lcom/android/settings_ex/TestingSettingsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TestingSettingsBroadcastReceiver.java"


# static fields
.field private static final CTA_VERSION_CODE:Ljava/lang/String; = "349"

.field private static final EXTERNALL_MMI_MENU_CODE:Ljava/lang/String; = "2846579"

.field private static final HUAWEI_HIDE_DEVELOPMENT:Ljava/lang/String; = "979223"

.field private static final HUAWEI_INTERNAL_ENGINEERMODE_CODE:Ljava/lang/String; = "2846579159"

.field private static final HUAWEI_INTERNAL_ENGINEERMODE_CODE_DEFAULT:Ljava/lang/String; = "14789632"

.field private static final HUAWEI_REAL_VERSION_CODE:Ljava/lang/String; = "963147"

.field private static final HUAWEI_RUN_TEST_CODE:Ljava/lang/String; = "19467328"

.field private static final PHONE_INFO_CODE:Ljava/lang/String; = "6130"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/high16 v9, 0x1000

    .line 43
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, host:Ljava/lang/String;
    :goto_0
    const-string v6, "6130"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 48
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, i:Landroid/content/Intent;
    const-class v6, Lcom/android/settings_ex/TestingSettings;

    invoke-virtual {v1, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 50
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 134
    .end local v0           #host:Ljava/lang/String;
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 46
    :cond_1
    const-string v0, " "

    goto :goto_0

    .line 52
    .restart local v0       #host:Ljava/lang/String;
    :cond_2
    const-string v6, "2846579"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 54
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .restart local v1       #i:Landroid/content/Intent;
    const-class v6, Lcom/android/settings_ex/TestingSettingsHW;

    invoke-virtual {v1, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 56
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 58
    .end local v1           #i:Landroid/content/Intent;
    :cond_3
    const-string v6, "2846579159"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "14789632"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 61
    :cond_4
    const-string v6, "2846579159"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 66
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v2, intents:Landroid/content/Intent;
    const-string v6, "com.android.huawei.projectmenu"

    const-string v7, "com.android.huawei.projectmenu.ProjectMenuAct"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 71
    .end local v2           #intents:Landroid/content/Intent;
    :cond_5
    const-string v6, "19467328"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 74
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .restart local v2       #intents:Landroid/content/Intent;
    const-string v6, "com.huawei.runningtestii"

    const-string v7, "com.huawei.runningtestii.RunningTestII"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 80
    .end local v2           #intents:Landroid/content/Intent;
    :cond_6
    const-string v6, "349"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "963147"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 82
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .restart local v1       #i:Landroid/content/Intent;
    const-class v6, Lcom/android/settings_ex/CTAInfoActivity;

    invoke-virtual {v1, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 84
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    const-string v6, "host"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 89
    .end local v1           #i:Landroid/content/Intent;
    :cond_8
    const-string v6, "979223"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 90
    const-string v6, "user"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "HideDevelopmentItem"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .restart local v1       #i:Landroid/content/Intent;
    const-class v6, Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v1, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 95
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 102
    .end local v1           #i:Landroid/content/Intent;
    :cond_9
    const-string v6, "3646633"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 104
    const/16 v6, 0x41

    new-array v4, v6, [B

    .line 105
    .local v4, rootCheck:[B
    new-instance v3, Landroid/app/NvramGetSet;

    invoke-direct {v3}, Landroid/app/NvramGetSet;-><init>()V

    .line 106
    .local v3, nvGetSet:Landroid/app/NvramGetSet;
    const/16 v6, 0x30

    const/4 v7, 0x2

    const/16 v8, 0x40

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/app/NvramGetSet;->readNV([BIII)Z

    .line 107
    new-instance v5, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 108
    .local v5, ss:Ljava/lang/String;
    const-string v6, "TestingReceiver"

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "risk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    :cond_a
    const-string v6, "user"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 110
    :cond_b
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .restart local v2       #intents:Landroid/content/Intent;
    const-string v6, "com.mediatek.engineermode"

    const-string v7, "com.mediatek.engineermode.EngineerMode"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 114
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 121
    .end local v2           #intents:Landroid/content/Intent;
    .end local v3           #nvGetSet:Landroid/app/NvramGetSet;
    .end local v4           #rootCheck:[B
    .end local v5           #ss:Ljava/lang/String;
    :cond_c
    const-string v6, "1673495"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 122
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.huawei.projectmenu.MANAGERINFO"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .restart local v2       #intents:Landroid/content/Intent;
    const-string v6, "com.android.huawei.projectmenu"

    const-string v7, "com.android.huawei.projectmenu.ManagerInfoActivity"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method
