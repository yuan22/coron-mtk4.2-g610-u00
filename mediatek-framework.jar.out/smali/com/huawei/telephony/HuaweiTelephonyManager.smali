.class public Lcom/huawei/telephony/HuaweiTelephonyManager;
.super Ljava/lang/Object;
.source "HuaweiTelephonyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HuaweiTelephonyManager"

.field private static sInstance:Lcom/huawei/telephony/HuaweiTelephonyManager;


# instance fields
.field private isMultiSimEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-direct {v0}, Lcom/huawei/telephony/HuaweiTelephonyManager;-><init>()V

    sput-object v0, Lcom/huawei/telephony/HuaweiTelephonyManager;->sInstance:Lcom/huawei/telephony/HuaweiTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/telephony/HuaweiTelephonyManager;->isMultiSimEnabled:Z

    .line 36
    return-void
.end method

.method public static getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/huawei/telephony/HuaweiTelephonyManager;->sInstance:Lcom/huawei/telephony/HuaweiTelephonyManager;

    return-object v0
.end method


# virtual methods
.method public getSlotIdFromSubId(I)I
    .locals 2
    .parameter "subId"

    .prologue
    .line 69
    if-gez p1, :cond_0

    .line 70
    const/4 p1, -0x1

    .line 74
    .end local p1
    :goto_0
    return p1

    .line 73
    .restart local p1
    :cond_0
    const-string v0, "HuaweiTelephonyManager"

    const-string v1, "DSDA, subId == slotId "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSubidFromSlotId(I)I
    .locals 2
    .parameter "slotId"

    .prologue
    .line 59
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 60
    :cond_0
    const/4 p1, -0x1

    .line 64
    .end local p1
    :goto_0
    return p1

    .line 63
    .restart local p1
    :cond_1
    const-string v0, "HuaweiTelephonyManager"

    const-string v1, "DSDA, slotId == subId"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isCardPresent(I)Z
    .locals 2
    .parameter "slotId"

    .prologue
    const/4 v0, 0x1

    .line 50
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/huawei/telephony/HuaweiTelephonyManager;->isMultiSimEnabled:Z

    return v0
.end method

.method public isSubActive(I)Z
    .locals 2
    .parameter "subId"

    .prologue
    .line 54
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getSlotIdFromSubId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->hasIccCard(I)Z

    move-result v0

    return v0
.end method
