.class public Lcom/android/settings_ex/BrightnessPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/BrightnessPreference$SavedState;
    }
.end annotation


# static fields
.field private static final AUTOMATIC_ECO_MODE:I = 0x2

.field private static final BRIGHTNESS_MODE_MANUAL:I = 0x0

.field private static final SEEK_BAR_RANGE:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "BrightnessPreference"

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z


# instance fields
.field private mAutoBacklightCheckBox:Landroid/widget/CheckBox;

.field private mAutoBacklightTitle:Landroid/widget/TextView;

.field private mAutoBackligthSummary:Landroid/widget/TextView;

.field private mAutomaticAvailable:Z

.field private mAutomaticEcoMode:Z

.field private mAutomaticMode:Z

.field private mBrightnessEcoModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCurBrightness:I

.field private mEcoFirstLaunch:Z

.field private mEcoModeChangeOut:Z

.field private mEcoModeChangeSelf:Z

.field private mFirstLaunch:Z

.field private mModeChangeOut:Z

.field private mModeChangeSelf:Z

.field private mOldAutomatic:I

.field private mOldAutomaticEco:I

.field private mOldBrightness:I

.field private mRestoredOldState:Z

.field private final mScreenBrightnessMaximum:I

.field private final mScreenBrightnessMinimum:I

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput-boolean v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mEcoModeChangeOut:Z

    .line 65
    iput-boolean v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mEcoModeChangeSelf:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mEcoFirstLaunch:Z

    .line 75
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mCurBrightness:I

    .line 81
    iput-boolean v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mModeChangeOut:Z

    .line 83
    iput-boolean v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mModeChangeSelf:Z

    .line 84
    iput-boolean v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mFirstLaunch:Z

    .line 93
    new-instance v3, Lcom/android/settings_ex/BrightnessPreference$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/settings_ex/BrightnessPreference$1;-><init>(Lcom/android/settings_ex/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 103
    new-instance v3, Lcom/android/settings_ex/BrightnessPreference$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/settings_ex/BrightnessPreference$2;-><init>(Lcom/android/settings_ex/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 110
    new-instance v3, Lcom/android/settings_ex/BrightnessPreference$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/settings_ex/BrightnessPreference$3;-><init>(Lcom/android/settings_ex/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mBrightnessEcoModeObserver:Landroid/database/ContentObserver;

    .line 120
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 121
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessMinimum:I

    .line 122
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessMaximum:I

    .line 129
    const-string v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 131
    .local v0, mgr:Landroid/hardware/SensorManager;
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticAvailable:Z

    .line 132
    const-string v2, "BrightnessPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAutomaticAvailable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const v2, 0x7f040064

    invoke-virtual {p0, v2}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 135
    const v2, 0x7f020090

    invoke-virtual {p0, v2}, Landroid/preference/DialogPreference;->setDialogIcon(I)V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->onBrightnessModeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->onBrightnessEcoModeChanged()V

    return-void
.end method

.method private getBrightness(I)I
    .locals 4
    .parameter "defaultValue"

    .prologue
    .line 311
    move v0, p1

    .line 313
    .local v0, brightness:I
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 318
    :goto_0
    return v0

    .line 315
    :catch_0
    move-exception v1

    .line 316
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "BrightnessPreference"

    const-string v3, "SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getBrightnessEcoMode(I)I
    .locals 5
    .parameter "defaultValue"

    .prologue
    .line 402
    move v0, p1

    .line 404
    .local v0, brightnessEcoMode:I
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_eco_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 409
    :goto_0
    const-string v2, "BrightnessPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brightnessEcoMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return v0

    .line 406
    :catch_0
    move-exception v1

    .line 407
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "BrightnessPreference"

    const-string v3, "SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getBrightnessMode(I)I
    .locals 5
    .parameter "defaultValue"

    .prologue
    .line 344
    move v0, p1

    .line 346
    .local v0, brightnessMode:I
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 351
    :goto_0
    const-string v2, "BrightnessPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brightnessMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return v0

    .line 348
    :catch_0
    move-exception v1

    .line 349
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "BrightnessPreference"

    const-string v3, "SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onBrightnessChanged()V
    .locals 3

    .prologue
    .line 357
    const-string v1, "BrightnessPreference"

    const-string v2, "onBrightnessChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessMaximum:I

    invoke-direct {p0, v1}, Lcom/android/settings_ex/BrightnessPreference;->getBrightness(I)I

    move-result v0

    .line 359
    .local v0, brightness:I
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 360
    iput v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness:I

    .line 365
    return-void
.end method

.method private onBrightnessEcoModeChanged()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 394
    const-string v1, "BrightnessPreference"

    const-string v2, "onBrightnessEcoModeChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-direct {p0, v0}, Lcom/android/settings_ex/BrightnessPreference;->getBrightnessEcoMode(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 396
    .local v0, checked:Z
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->updateOldAutomaticEcoMode()V

    .line 397
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 399
    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 369
    const-string v3, "BrightnessPreference"

    const-string v4, "onBrightnessModeChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-direct {p0, v2}, Lcom/android/settings_ex/BrightnessPreference;->getBrightnessMode(I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 371
    .local v0, checked:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->updateOldAutomaticMode()V

    .line 372
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 373
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    sget-boolean v4, Lcom/android/settings_ex/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 390
    return-void

    .end local v0           #checked:Z
    :cond_2
    move v0, v2

    .line 370
    goto :goto_0
.end method

.method private restoreOldState()V
    .locals 3

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_0

    .line 517
    iget v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/settings_ex/BrightnessPreference;->setMode(I)V

    .line 523
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutomatic:I

    if-nez v0, :cond_2

    .line 524
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness:I

    invoke-direct {p0, v0}, Lcom/android/settings_ex/BrightnessPreference;->setBrightness(I)V

    .line 525
    iget v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness:I

    invoke-direct {p0, v0}, Lcom/android/settings_ex/BrightnessPreference;->updateSeekBarPos(I)V

    .line 526
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 536
    :cond_2
    return-void
.end method

.method private setBrightness(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    .line 595
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 598
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 599
    invoke-interface {v0}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 608
    .end local v0           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 602
    .restart local v0       #power:Landroid/os/IPowerManager;
    :cond_1
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 605
    .end local v0           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setEcoMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 430
    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEcoMode, the mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticEcoMode:Z

    .line 432
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_eco_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 434
    return-void

    .line 431
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEcoModeChangeState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 442
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mEcoFirstLaunch:Z

    if-eqz v0, :cond_2

    .line 445
    iput-boolean v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mEcoFirstLaunch:Z

    .line 454
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mEcoModeChangeOut:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mEcoModeChangeSelf:Z

    if-nez v0, :cond_1

    .line 455
    iput-boolean v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mEcoModeChangeOut:Z

    .line 457
    :cond_1
    return-void

    .line 449
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mEcoModeChangeOut:Z

    if-nez v0, :cond_0

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mEcoModeChangeSelf:Z

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 611
    const-string v1, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMode, the mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticMode:Z

    .line 613
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 615
    return-void

    .line 612
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setModeChangeState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mFirstLaunch:Z

    if-eqz v0, :cond_2

    .line 292
    iput-boolean v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mFirstLaunch:Z

    .line 301
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mModeChangeOut:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mModeChangeSelf:Z

    if-nez v0, :cond_1

    .line 302
    iput-boolean v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mModeChangeOut:Z

    .line 304
    :cond_1
    return-void

    .line 296
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mModeChangeOut:Z

    if-nez v0, :cond_0

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mModeChangeSelf:Z

    goto :goto_0
.end method

.method private updateOldAutomaticEcoMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 414
    const-string v0, "BrightnessPreference"

    const-string v1, "updateOldAutomaticEcoMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mEcoModeChangeSelf:Z

    if-nez v0, :cond_0

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mEcoModeChangeOut:Z

    .line 418
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mEcoModeChangeOut:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mEcoModeChangeSelf:Z

    if-nez v0, :cond_1

    .line 420
    invoke-direct {p0, v3}, Lcom/android/settings_ex/BrightnessPreference;->getBrightnessEcoMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutomaticEco:I

    .line 421
    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOldAutomaticEcoMode + mOldAutomaticEco = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutomaticEco:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mEcoModeChangeSelf:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mEcoModeChangeOut:Z

    if-nez v0, :cond_2

    .line 425
    iput-boolean v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mEcoModeChangeSelf:Z

    .line 427
    :cond_2
    return-void
.end method

.method private updateOldAutomaticMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 468
    const-string v0, "BrightnessPreference"

    const-string v1, "updateOldAutomaticMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mModeChangeSelf:Z

    if-nez v0, :cond_0

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mModeChangeOut:Z

    .line 472
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mModeChangeOut:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mModeChangeSelf:Z

    if-nez v0, :cond_1

    .line 474
    invoke-direct {p0, v3}, Lcom/android/settings_ex/BrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutomatic:I

    .line 475
    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOldAutomaticMode+mOldAutomatic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutomatic:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mModeChangeSelf:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mModeChangeOut:Z

    if-nez v0, :cond_2

    .line 479
    iput-boolean v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mModeChangeSelf:Z

    .line 481
    :cond_2
    return-void
.end method

.method private updateSeekBarPos(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 543
    const-string v0, "BrightnessPreference"

    const-string v1, "updateSeekBar position"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 546
    :cond_0
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 171
    invoke-static {p1}, Lcom/android/settings_ex/BrightnessPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 174
    invoke-direct {p0, v2}, Lcom/android/settings_ex/BrightnessPreference;->getBrightness(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness:I

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness:I

    iget v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 182
    const v0, 0x7f0800f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 184
    const v0, 0x7f0800f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    .line 185
    const v0, 0x7f0800f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutoBacklightTitle:Landroid/widget/TextView;

    .line 186
    const v0, 0x7f0800f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutoBackligthSummary:Landroid/widget/TextView;

    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutoBacklightTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutoBackligthSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 200
    invoke-direct {p0, v2}, Lcom/android/settings_ex/BrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutomatic:I

    .line 201
    iget v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutomatic:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticMode:Z

    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticMode:Z

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/settings_ex/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 228
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 229
    return-void

    :cond_2
    move v0, v2

    .line 201
    goto :goto_0

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0800f5

    if-ne v0, v3, :cond_4

    .line 251
    const-string v0, "BrightnessPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCheckedChanged, automatic isChecked =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->setModeChangeState()V

    .line 253
    if-eqz p2, :cond_3

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/BrightnessPreference;->setMode(I)V

    .line 255
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/settings_ex/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 273
    if-nez p2, :cond_2

    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/BrightnessPreference;->setBrightness(I)V

    .line 282
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v2

    .line 253
    goto :goto_0

    .line 276
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800f6

    if-ne v0, v1, :cond_2

    .line 277
    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged, backlight isChecked =  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->setEcoModeChangeState()V

    .line 279
    if-eqz p2, :cond_5

    const/4 v2, 0x2

    :cond_5
    invoke-direct {p0, v2}, Lcom/android/settings_ex/BrightnessPreference;->setEcoMode(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutoBacklightTitle:Landroid/widget/TextView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutoBackligthSummary:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 461
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 463
    :cond_1
    return-void

    .line 461
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 485
    const-string v1, "BrightnessPreference"

    const-string v2, "onDialogClosed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 488
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 490
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 492
    const-string v1, "screen_brightness"

    iget-object v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 503
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 504
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 510
    return-void

    .line 500
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 237
    iget v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/android/settings_ex/BrightnessPreference;->setBrightness(I)V

    .line 239
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 643
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Lcom/android/settings_ex/BrightnessPreference$SavedState;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 645
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 668
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 649
    check-cast v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;

    .line 650
    .local v0, myState:Lcom/android/settings_ex/BrightnessPreference$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 651
    iget v1, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->oldProgress:I

    iput v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness:I

    .line 652
    iget-boolean v1, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->oldAutomatic:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutomatic:I

    .line 653
    iget-boolean v1, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->automatic:Z

    if-eqz v1, :cond_3

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/settings_ex/BrightnessPreference;->setMode(I)V

    .line 664
    iget v1, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->curBrightness:I

    iput v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mCurBrightness:I

    .line 666
    iget v1, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->progress:I

    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/settings_ex/BrightnessPreference;->setBrightness(I)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 652
    goto :goto_1

    :cond_3
    move v2, v3

    .line 653
    goto :goto_2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 619
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 620
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 638
    :goto_0
    return-object v0

    .line 623
    :cond_1
    new-instance v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/BrightnessPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 624
    .local v0, myState:Lcom/android/settings_ex/BrightnessPreference$SavedState;
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->automatic:Z

    .line 625
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    iput v3, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->progress:I

    .line 626
    iget v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutomatic:I

    if-ne v3, v2, :cond_2

    :goto_1
    iput-boolean v2, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->oldAutomatic:Z

    .line 627
    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness:I

    iput v2, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->oldProgress:I

    .line 628
    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mCurBrightness:I

    iput v2, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->curBrightness:I

    .line 637
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->restoreOldState()V

    goto :goto_0

    .line 626
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 243
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 247
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 141
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/BrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iput-boolean v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mFirstLaunch:Z

    .line 143
    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindDialogView---mFirstLaunch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mFirstLaunch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 152
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 166
    return-void
.end method
