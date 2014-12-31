.class public Lcom/huawei/android/hardware/fmradio/FmConfig;
.super Ljava/lang/Object;
.source "FmConfig.java"


# static fields
.field private static final FM_EU_BAND:I = 0x1

.field private static final FM_JAPAN_STANDARD_BAND:I = 0x3

.field private static final FM_JAPAN_WIDE_BAND:I = 0x2

.field private static final FM_USER_DEFINED_BAND:I = 0x4

.field private static final FM_US_BAND:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FmConfig"

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_EMPHASIS:I = 0x800000c

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDS_STD:I = 0x800000d

.field private static final V4L2_CID_PRIVATE_TAVARUA_REGION:I = 0x8000007

.field private static final V4L2_CID_PRIVATE_TAVARUA_SPACING:I = 0x800000e


# instance fields
.field private mBandLowerLimit:I

.field private mBandUpperLimit:I

.field private mChSpacing:I

.field private mEmphasis:I

.field private mRadioBand:I

.field private mRdsStd:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static fmConfigure(ILcom/huawei/android/hardware/fmradio/FmConfig;)Z
    .locals 3
    .parameter "fd"
    .parameter "configSettings"

    .prologue
    .line 173
    const-string v1, "FmConfig"

    const-string v2, "In fmConfigure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const v1, 0x800000c

    invoke-virtual {p1}, Lcom/huawei/android/hardware/fmradio/FmConfig;->getEmphasis()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 176
    .local v0, re:I
    const v1, 0x800000d

    invoke-virtual {p1}, Lcom/huawei/android/hardware/fmradio/FmConfig;->getRdsStd()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 177
    const v1, 0x800000e

    invoke-virtual {p1}, Lcom/huawei/android/hardware/fmradio/FmConfig;->getChSpacing()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 178
    invoke-virtual {p1}, Lcom/huawei/android/hardware/fmradio/FmConfig;->getLowerLimit()I

    move-result v1

    invoke-virtual {p1}, Lcom/huawei/android/hardware/fmradio/FmConfig;->getUpperLimit()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setBandNative(III)I

    move-result v0

    .line 180
    const v1, 0x8000007

    const/4 v2, 0x4

    invoke-static {p0, v1, v2}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 184
    if-gez v0, :cond_0

    .line 185
    const/4 v1, 0x0

    .line 187
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getChSpacing()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/huawei/android/hardware/fmradio/FmConfig;->mChSpacing:I

    return v0
.end method

.method public getEmphasis()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/huawei/android/hardware/fmradio/FmConfig;->mEmphasis:I

    return v0
.end method

.method public getLowerLimit()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/huawei/android/hardware/fmradio/FmConfig;->mBandLowerLimit:I

    return v0
.end method

.method public getRadioBand()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/huawei/android/hardware/fmradio/FmConfig;->mRadioBand:I

    return v0
.end method

.method public getRdsStd()I
    .locals 2

    .prologue
    .line 141
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUpperLimit()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/huawei/android/hardware/fmradio/FmConfig;->mBandUpperLimit:I

    return v0
.end method

.method public setChSpacing(I)V
    .locals 2
    .parameter "spacing"

    .prologue
    .line 137
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEmphasis(I)V
    .locals 2
    .parameter "emp"

    .prologue
    .line 129
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLowerLimit(I)V
    .locals 2
    .parameter "lowLimit"

    .prologue
    .line 153
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRadioBand(I)V
    .locals 2
    .parameter "band"

    .prologue
    .line 121
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRdsStd(I)V
    .locals 2
    .parameter "rdsStandard"

    .prologue
    .line 145
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUpperLimit(I)V
    .locals 2
    .parameter "upLimit"

    .prologue
    .line 161
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
