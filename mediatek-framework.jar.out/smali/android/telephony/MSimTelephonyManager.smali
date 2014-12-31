.class public Landroid/telephony/MSimTelephonyManager;
.super Ljava/lang/Object;
.source "MSimTelephonyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MSimTelephonyManager"

.field private static sInstance:Landroid/telephony/MSimTelephonyManager;


# instance fields
.field private isMultiSimEnabled:Z

.field private tm:Landroid/telephony/TelephonyManager;

.field private tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Landroid/telephony/MSimTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/MSimTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->sInstance:Landroid/telephony/MSimTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 59
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    .line 60
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static getDefault()Landroid/telephony/MSimTelephonyManager;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sInstance:Landroid/telephony/MSimTelephonyManager;

    return-object v0
.end method


# virtual methods
.method public getCallState(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 429
    iget-boolean v0, p0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 431
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getCallState(I)I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentPhoneType(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 111
    iget-boolean v0, p0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 113
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 375
    iget-boolean v0, p0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getLine1AlphaTag(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 358
    iget-boolean v0, p0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 360
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 187
    iget-boolean v0, p0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 151
    iget-boolean v0, p0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkType(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 215
    iget-boolean v0, p0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 217
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 229
    iget-boolean v0, p0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 312
    iget-boolean v0, p0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 314
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 283
    iget-boolean v0, p0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 325
    iget-boolean v0, p0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimState()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public getSimState(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    .line 265
    iget-boolean v0, p0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 267
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 343
    iget-boolean v0, p0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 417
    iget-boolean v0, p0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 419
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 389
    iget-boolean v0, p0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoiceMessageCount(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 403
    iget-boolean v0, p0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount()I

    move-result v0

    .line 405
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getVoiceMessageCount(I)I

    move-result v0

    goto :goto_0
.end method

.method public hasIccCard(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 241
    iget-boolean v0, p0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    .line 243
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->hasIccCard(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 169
    iget-boolean v0, p0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 171
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->isNetworkRoaming(I)Z

    move-result v0

    goto :goto_0
.end method
