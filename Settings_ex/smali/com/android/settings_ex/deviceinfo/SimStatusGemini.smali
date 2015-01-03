.class public Lcom/android/settings_ex/deviceinfo/SimStatusGemini;
.super Landroid/preference/PreferenceActivity;
.source "SimStatusGemini.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x12c

.field private static final EVENT_SIGNAL_STRENGTH_CHANGED:I = 0xc8

.field private static final KEY_DATA_STATE:Ljava/lang/String; = "data_state"

.field private static final KEY_NETWORK_TYPE:Ljava/lang/String; = "network_type"

.field private static final KEY_NUMBER:Ljava/lang/String; = "number"

.field private static final KEY_OPERATOR_NAME:Ljava/lang/String; = "operator_name"

.field private static final KEY_ROAMING_STATE:Ljava/lang/String; = "roaming_state"

.field private static final KEY_SERVICE_STATE:Ljava/lang/String; = "service_state"

.field private static final KEY_SIGNAL_STRENGTH:Ljava/lang/String; = "signal_strength"

.field private static final TAG:Ljava/lang/String; = "Gemini_SimStatus"

.field private static sRes:Landroid/content/res/Resources;

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mHandler:Landroid/os/Handler;

.field private mIsShouldBeFinished:Z

.field private mIsUnlockFollow:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceComplete:Ljava/lang/Runnable;

.field private mServiceState:I

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSignalStrengthPreference:Landroid/preference/Preference;

.field private mSimId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 82
    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 93
    iput v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSimId:I

    .line 94
    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;-><init>(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;Lcom/android/settings_ex/deviceinfo/SimStatusGemini$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    new-instance v0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$1;-><init>(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mServiceComplete:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$2;-><init>(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 407
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->updateDataState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSimId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mServiceState:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mServiceState:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private dealWith3AppLaunch()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 433
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 435
    .local v1, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 436
    const/4 v2, -0x1

    .line 447
    .local v2, slotID:I
    :cond_0
    :goto_0
    const-string v4, "Gemini_SimStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dealWith3AppLaunch() slotID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return v2

    .line 437
    .end local v2           #slotID:I
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 438
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v2, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .restart local v2       #slotID:I
    goto :goto_0

    .line 440
    .end local v2           #slotID:I
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v2, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 441
    .restart local v2       #slotID:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    .line 442
    .local v3, temp:Landroid/provider/Telephony$SIMInfo;
    iget v4, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-le v2, v4, :cond_3

    .line 443
    iget v2, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    goto :goto_1
.end method

.method private setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "preference"
    .parameter "property"
    .parameter "alt"

    .prologue
    .line 263
    :try_start_0
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, strSummary:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 267
    .local v1, p:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 268
    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->sUnknown:Ljava/lang/String;

    .end local v2           #strSummary:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v1           #p:Landroid/preference/Preference;
    :cond_1
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "Gemini_SimStatus"

    const-string v4, "fail to get system property"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 278
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0269

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 282
    :cond_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 283
    .local v0, p:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 286
    :cond_1
    return-void
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 299
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSimId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDataState(I)I

    move-result v1

    .line 300
    .local v1, state:I
    sget-object v2, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0b028a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 319
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void

    .line 304
    :pswitch_0
    sget-object v2, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0288

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    goto :goto_0

    .line 307
    :pswitch_1
    sget-object v2, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0289

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 308
    goto :goto_0

    .line 310
    :pswitch_2
    sget-object v2, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0287

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    goto :goto_0

    .line 313
    :pswitch_3
    sget-object v2, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0286

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 4

    .prologue
    .line 290
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSimId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeNameGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, netWorkTypeName:Ljava/lang/String;
    const-string v2, "network_type"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 292
    .local v1, p:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 293
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->sUnknown:Ljava/lang/String;

    .end local v0           #netWorkTypeName:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 296
    :cond_1
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "serviceState"

    .prologue
    .line 324
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 325
    .local v1, state:I
    sget-object v2, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0b028a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 344
    :goto_0
    const-string v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    const-string v2, "roaming_state"

    sget-object v3, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0281

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :goto_1
    const-string v2, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void

    .line 329
    :pswitch_0
    sget-object v2, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0b027d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    goto :goto_0

    .line 332
    :pswitch_1
    sget-object v2, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0b027e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    goto :goto_0

    .line 335
    :pswitch_2
    sget-object v2, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0b027f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    goto :goto_0

    .line 338
    :pswitch_3
    sget-object v2, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0280

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 339
    goto :goto_0

    .line 349
    :cond_0
    const-string v2, "roaming_state"

    sget-object v3, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0282

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, -0x1

    .line 152
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    new-instance v4, Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mServiceComplete:Ljava/lang/Runnable;

    invoke-direct {v4, v5}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 154
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v4, p0}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 155
    const v4, 0x7f050012

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 159
    .local v0, it:Landroid/content/Intent;
    const-string v4, "slotid"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSimId:I

    .line 160
    const-string v4, "Gemini_SimStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSimId is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSimId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSimId:I

    if-ne v4, v7, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->dealWith3AppLaunch()I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSimId:I

    .line 168
    :cond_0
    iget v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSimId:I

    invoke-static {p0, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    .line 169
    .local v3, simInfo:Landroid/provider/Telephony$SIMInfo;
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMCount(Landroid/content/Context;)I

    move-result v1

    .line 170
    .local v1, simCount:I
    const/4 v2, 0x0

    .line 171
    .local v2, simDisplayName:Ljava/lang/String;
    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    if-eqz v3, :cond_1

    .line 172
    iget-object v2, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 174
    :cond_1
    if-eqz v2, :cond_2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 175
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 178
    :cond_2
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sput-object v4, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    .line 179
    sget-object v4, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v5, 0x7f0b0269

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->sUnknown:Ljava/lang/String;

    .line 180
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 181
    new-instance v4, Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-direct {v4, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 184
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 192
    const-string v4, "signal_strength"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    .line 193
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 197
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 198
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 247
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 253
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 203
    iget-boolean v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    if-eqz v4, :cond_0

    .line 204
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 242
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-boolean v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    if-nez v4, :cond_1

    .line 208
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    .line 209
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$3;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$3;-><init>(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 218
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 221
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSimId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getLine1NumberGemini(I)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, rawNumber:Ljava/lang/String;
    const/4 v0, 0x0

    .line 224
    .local v0, formattedNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 225
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    :cond_2
    const-string v4, "number"

    invoke-direct {p0, v4, v0}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->updateDataState()V

    .line 232
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSimId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v3

    .line 233
    .local v3, serviceState:Landroid/telephony/ServiceState;
    invoke-direct {p0, v3}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 234
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mServiceState:I

    .line 235
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSimId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getSignalStrengthGemini(I)Landroid/telephony/SignalStrength;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 236
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->updateSignalStrength()V

    .line 237
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x141

    iget v7, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSimId:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    goto :goto_0
.end method

.method updateSignalStrength()V
    .locals 11

    .prologue
    const v10, 0x7f0b028d

    const/4 v5, 0x0

    const/4 v9, -0x1

    .line 355
    const-string v6, "Gemini_SimStatus"

    const-string v7, "updateSignalStrength()"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    if-eqz v6, :cond_4

    .line 361
    const-string v6, "Gemini_SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ServiceState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mServiceState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v6, 0x1

    iget v7, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mServiceState:I

    if-eq v6, v7, :cond_0

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mServiceState:I

    if-ne v6, v7, :cond_1

    .line 364
    :cond_0
    const-string v6, "Gemini_SimStatus"

    const-string v7, "ServiceState is Not ready, set signalStrength 0"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 368
    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 369
    .local v1, r:Landroid/content/res/Resources;
    const/4 v0, 0x1

    .line 370
    .local v0, isGsmSignal:Z
    const/4 v3, 0x0

    .line 371
    .local v3, signalDbm:I
    const/4 v2, 0x0

    .line 372
    .local v2, signalAsu:I
    const/4 v4, 0x0

    .line 373
    .local v4, signalDbmEvdo:I
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v6, :cond_3

    .line 374
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    .line 375
    if-eqz v0, :cond_5

    .line 376
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getGsmSignalStrengthDbm()I

    move-result v3

    .line 377
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 378
    const-string v6, "Gemini_SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SignalStrength is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dbm , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " asu"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    if-ne v9, v3, :cond_2

    move v3, v5

    .line 380
    :cond_2
    if-ne v9, v2, :cond_3

    move v2, v5

    .line 390
    :cond_3
    :goto_0
    if-eqz v0, :cond_8

    .line 391
    const-string v5, "Gemini_SimStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SignalStrength is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dbm , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " asu"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0b028e

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 405
    .end local v0           #isGsmSignal:Z
    .end local v1           #r:Landroid/content/res/Resources;
    .end local v2           #signalAsu:I
    .end local v3           #signalDbm:I
    .end local v4           #signalDbmEvdo:I
    :cond_4
    :goto_1
    return-void

    .line 382
    .restart local v0       #isGsmSignal:Z
    .restart local v1       #r:Landroid/content/res/Resources;
    .restart local v2       #signalAsu:I
    .restart local v3       #signalDbm:I
    .restart local v4       #signalDbmEvdo:I
    :cond_5
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v3

    .line 383
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v4

    .line 384
    const-string v6, "Gemini_SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SignalStrength is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dbm , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dbm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    if-ne v9, v3, :cond_6

    move v3, v5

    .line 386
    :cond_6
    if-ne v9, v4, :cond_7

    move v4, v5

    :cond_7
    goto/16 :goto_0

    .line 397
    :cond_8
    const-string v5, "Gemini_SimStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SignalStrength is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dbm , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dbm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0b01c2

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
