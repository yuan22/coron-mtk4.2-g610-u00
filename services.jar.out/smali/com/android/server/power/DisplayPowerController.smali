.class final Lcom/android/server/power/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;,
        Lcom/android/server/power/DisplayPowerController$Callbacks;
    }
.end annotation


# static fields
.field private static final BRIGHTENING_LIGHT_DEBOUNCE:J = 0x12cL

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.1f

.field private static final BRIGHTNESS_RAMP_RATE_FAST:I = 0xc8

.field private static final BRIGHTNESS_RAMP_RATE_SLOW:I = 0x28

.field private static final DARKENING_LIGHT_DEBOUNCE:J = 0x1f4L

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static DEBUG:Z = false

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field private static final ELECTRON_BEAM_OFF_ANIMATION_DURATION_MILLIS:I = 0x190

.field private static final ELECTRON_BEAM_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field private static final LIGHTSENSOR_DEFAULT_BRIGHTNESS:I = 0xff

.field private static final LIGHT_SENSOR_RATE_MILLIS:I = 0x64

.field private static final LONG_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x1f4L

.field private static final MSG_LIGHT_SENSOR_DEBOUNCED:I = 0x3

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0x64

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field public static final P_SHUTDWON:Ljava/lang/String; = "android.intent.action.ACTION_PRE_SHUTDOWN"

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT_MAX_GAMMA:F = 3.0f

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SCREEN_STATE_DIM:I = 0x2

.field private static final SCREEN_STATE_OFF:I = 0x0

.field private static final SCREEN_STATE_ON:I = 0x1

.field private static final SHORT_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x64L

.field private static final SYNTHETIC_LIGHT_SENSOR_RATE_MILLIS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "PowerManagerDisplayController"

.field private static final TWILIGHT_ADJUSTMENT_MAX_GAMMA:F = 1.5f

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x6ddd00L

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_ELECTRON_BEAM_ON_ANIMATION:Z

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

.field private static final USE_TWILIGHT_ADJUSTMENT:Z

.field static mScreenBrightnessRangeMaximumProtected:I

.field static mScreenBrightnessRangeMinimumProtected:I


# instance fields
.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mButtonBrightness:F

.field private mCallbackHandler:Landroid/os/Handler;

.field private final mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDebounceLuxDirection:I

.field private mDebounceLuxTime:J

.field private final mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayReadyLocked:Z

.field private mElectronBeam:Lcom/android/server/power/ElectronBeam;

.field private mElectronBeamFadesConfig:Z

.field private mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

.field private mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

.field private final mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

.field private mLastEBoffTime:J

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastScreenAutoBrightnessGamma:F

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorWarmUpTimeConfig:I

.field private final mLights:Lcom/android/server/LightsService;

.field private final mLock:Ljava/lang/Object;

.field private final mNotifier:Lcom/android/server/power/Notifier;

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/power/DisplayPowerState;

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private mRecentLightSamples:I

.field private mRecentLongTermAverageLux:F

.field private mRecentShortTermAverageLux:F

.field private mScreenAutoBrightness:I

.field private mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private final mScreenBrightnessDimConfig:I

.field private mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/power/RampAnimator",
            "<",
            "Lcom/android/server/power/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOnBlockStartRealTime:J

.field private mScreenOnWasBlocked:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mShutDownFlag_D:Z

.field private final mTwilight:Lcom/android/server/TwilightService;

.field private mTwilightChanged:Z

.field private final mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mUsingScreenAutoBrightness:Z

.field private mWaitingForNegativeProximity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    .line 90
    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    .line 105
    invoke-static {}, Landroid/os/PowerManager;->useTwilightAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/power/Notifier;Lcom/android/server/LightsService;Lcom/android/server/TwilightService;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/power/DisplayPowerController$Callbacks;Landroid/os/Handler;)V
    .locals 10
    .parameter "looper"
    .parameter "context"
    .parameter "notifier"
    .parameter "lights"
    .parameter "twilight"
    .parameter "displayBlanker"
    .parameter "callbacks"
    .parameter "callbackHandler"

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 285
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 288
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 341
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 344
    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    .line 375
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mShutDownFlag_D:Z

    .line 599
    new-instance v6, Lcom/android/server/power/DisplayPowerController$2;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$2;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 941
    new-instance v6, Lcom/android/server/power/DisplayPowerController$3;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$3;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1284
    new-instance v6, Lcom/android/server/power/DisplayPowerController$4;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$4;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 1295
    new-instance v6, Lcom/android/server/power/DisplayPowerController$5;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$5;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 1306
    new-instance v6, Lcom/android/server/power/DisplayPowerController$6;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$6;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 1445
    new-instance v6, Lcom/android/server/power/DisplayPowerController$8;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$8;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 1465
    new-instance v6, Lcom/android/server/power/DisplayPowerController$9;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$9;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 1498
    new-instance v6, Lcom/android/server/power/DisplayPowerController$10;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$10;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    .line 388
    new-instance v6, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v6, p0, p1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    .line 389
    iput-object p3, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    .line 390
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    .line 391
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    .line 392
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    .line 393
    iput-object p2, p0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 394
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 396
    .local v1, filter:Landroid/content/IntentFilter;
    iput-object p4, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    .line 397
    iput-object p5, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    .line 398
    new-instance v6, Landroid/hardware/SystemSensorManager;

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 399
    const-string v6, "display"

    invoke-virtual {p2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManager;

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 401
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 403
    .local v3, resources:Landroid/content/res/Resources;
    const v6, #android:integer@config_screenBrightnessDim#t

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    const v6, #android:integer@config_screenBrightnessSettingMinimum#t

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 410
    .local v5, screenBrightnessMinimum:I
    const v6, #android:bool@config_automatic_brightness_available#t

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v6, :cond_1

    const v6, #android:array@config_autoBrightnessLevels#t

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .local v2, lux:[I
    const v6, #android:array@config_autoBrightnessLcdBacklightValues#t

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 418
    .local v4, screenBrightness:[I
    invoke-static {v2, v4}, Lcom/android/server/power/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 419
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    if-nez v6, :cond_5

    .line 420
    const-string v6, "PowerManagerDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in config.xml.  config_autoBrightnessLcdBacklightValues (size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "must be monotic and have exactly one more entry than "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "config_autoBrightnessLevels (size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "which must be strictly increasing.  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Auto-brightness will be disabled."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 433
    :cond_0
    :goto_0
    const v6, #android:integer@config_lightSensorWarmupTime#t

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    .line 437
    .end local v2           #lux:[I
    .end local v4           #screenBrightness:[I
    :cond_1
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    .line 438
    const/16 v6, 0xff

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    .line 441
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    sput v6, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimumProtected:I

    .line 442
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    sput v6, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximumProtected:I

    .line 443
    const-string v6, "PowerManagerDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init screen brightness: mScreenBrightnessRangeMinimumProtected = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimumProtected:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mScreenBrightnessRangeMaximumProtected = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximumProtected:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v6, #android:bool@config_animateScreenLights#t

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfig:Z

    .line 452
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 453
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v6, :cond_2

    .line 454
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v6

    const/high16 v7, 0x40a0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    .line 459
    :cond_2
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v6, :cond_3

    .line 461
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 464
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v6, :cond_4

    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v6, :cond_4

    .line 465
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/TwilightService;->registerListener(Lcom/android/server/TwilightService$TwilightListener;Landroid/os/Handler;)V

    .line 468
    :cond_4
    const-string v6, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 469
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/power/DisplayPowerController$1;

    invoke-direct {v7, p0}, Lcom/android/server/power/DisplayPowerController$1;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v6, v7, v1, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 478
    return-void

    .line 428
    .restart local v2       #lux:[I
    .restart local v4       #screenBrightness:[I
    :cond_5
    const/4 v6, 0x0

    aget v6, v4, v6

    if-ge v6, v5, :cond_0

    .line 429
    const/4 v6, 0x0

    aget v5, v4, v6

    goto/16 :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/DisplayPowerController;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/power/DisplayPowerController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerController;->mShutDownFlag_D:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/power/DisplayPowerController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/power/DisplayPowerController;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/server/power/DisplayPowerController;->mButtonBrightness:F

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/power/DisplayPowerController;JF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/server/power/DisplayPowerController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$Callbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceLightSensor()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/power/DisplayPowerController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/power/DisplayPowerController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method private animateScreenBrightness(II)V
    .locals 1
    .parameter "target"
    .parameter "rate"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/RampAnimator;->animateTo(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p1}, Lcom/android/server/power/Notifier;->onScreenBrightness(I)V

    .line 939
    :cond_0
    return-void
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 6
    .parameter "time"
    .parameter "lux"

    .prologue
    .line 1036
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    .line 1037
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1038
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    .line 1039
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    .line 1049
    :goto_0
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    .line 1050
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    .line 1051
    return-void

    .line 1041
    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    sub-long v0, p1, v2

    .line 1042
    .local v0, timeDelta:J
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    sub-float v3, p3, v3

    long-to-float v4, v0

    mul-float/2addr v3, v4

    const-wide/16 v4, 0x64

    add-long/2addr v4, v0

    long-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    .line 1044
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    sub-float v3, p3, v3

    long-to-float v4, v0

    mul-float/2addr v3, v4

    const-wide/16 v4, 0x1f4

    add-long/2addr v4, v0

    long-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    goto :goto_0
.end method

.method private blockScreenOn()V
    .locals 2

    .prologue
    .line 869
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-nez v0, :cond_0

    .line 870
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    .line 871
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 872
    const-string v0, "PowerManagerDisplayController"

    const-string v1, "Blocked screen on."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 876
    :cond_0
    return-void
.end method

.method private static clamp(III)I
    .locals 0
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 917
    if-gt p0, p1, :cond_0

    .line 923
    .end local p1
    :goto_0
    return p1

    .line 920
    .restart local p1
    :cond_0
    if-lt p0, p2, :cond_1

    move p1, p2

    .line 921
    goto :goto_0

    :cond_1
    move p1, p0

    .line 923
    goto :goto_0
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 913
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->clamp(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 909
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Lcom/android/server/power/DisplayPowerController;->clamp(III)I

    move-result v0

    return v0
.end method

.method private static createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 13
    .parameter "lux"
    .parameter "brightness"

    .prologue
    const/high16 v12, 0x3fa0

    .line 482
    :try_start_0
    array-length v2, p1

    .line 483
    .local v2, n:I
    new-array v5, v2, [F

    .line 484
    .local v5, x:[F
    new-array v6, v2, [F

    .line 485
    .local v6, y:[F
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, p1, v8

    invoke-static {v8}, Lcom/android/server/power/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v8

    aput v8, v6, v7

    .line 486
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 487
    add-int/lit8 v7, v1, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    aput v7, v5, v1

    .line 488
    aget v7, p1, v1

    invoke-static {v7}, Lcom/android/server/power/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v7

    aput v7, v6, v1

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 491
    :cond_0
    invoke-static {v5, v6}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    .line 492
    .local v3, spline:Landroid/util/Spline;
    sget-boolean v7, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 493
    const-string v7, "PowerManagerDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auto-brightness spline: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/high16 v4, 0x3f80

    .local v4, v:F
    :goto_1
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    .line 495
    const-string v7, "PowerManagerDisplayController"

    const-string v8, "  %7.1f: %7.1f"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    mul-float/2addr v4, v12

    goto :goto_1

    .line 499
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #spline:Landroid/util/Spline;
    .end local v4           #v:F
    .end local v5           #x:[F
    .end local v6           #y:[F
    :catch_0
    move-exception v0

    .line 500
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v7, "PowerManagerDisplayController"

    const-string v8, "Could not create auto-brightness spline."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    const/4 v3, 0x0

    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :cond_1
    return-object v3
.end method

.method private debounceLightSensor()V
    .locals 6

    .prologue
    .line 1177
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v2, :cond_2

    .line 1178
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1179
    .local v0, time:J
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 1180
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1181
    const-string v2, "PowerManagerDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debounceLightSensor: Synthesizing light sensor measurement after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_0
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurement(JF)V

    .line 1186
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLux(J)V

    .line 1188
    .end local v0           #time:J
    :cond_2
    return-void
.end method

.method private debounceProximitySensor()V
    .locals 6

    .prologue
    .line 991
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 992
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 993
    .local v1, now:J
    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v3, v3, v1

    if-gtz v3, :cond_1

    .line 994
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 995
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    .line 1002
    .end local v1           #now:J
    :cond_0
    :goto_0
    return-void

    .line 997
    .restart local v1       #now:J
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 998
    .local v0, msg:Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 999
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "pw"

    .prologue
    .line 1344
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1345
    const-string v0, "Display Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLuxValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentShortTermAverageLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLongTermAverageLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDebounceLuxDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDebounceLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUsingScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastScreenAutoBrightnessGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTwilight.getCurrentState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    invoke-virtual {v1}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1377
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 1382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1386
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    if-eqz v0, :cond_2

    .line 1387
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 1389
    :cond_2
    return-void
.end method

.method private static getTwilightGamma(JJJ)F
    .locals 9
    .parameter "now"
    .parameter "lastSunset"
    .parameter "nextSunrise"

    .prologue
    const-wide/32 v7, 0x6ddd00

    const-wide/16 v5, 0x0

    const v4, 0x4adbba00

    const/high16 v0, 0x3fc0

    const/high16 v1, 0x3f80

    .line 1258
    cmp-long v2, p2, v5

    if-ltz v2, :cond_0

    cmp-long v2, p4, v5

    if-ltz v2, :cond_0

    cmp-long v2, p0, p2

    if-ltz v2, :cond_0

    cmp-long v2, p0, p4

    if-lez v2, :cond_2

    :cond_0
    move v0, v1

    .line 1273
    :cond_1
    :goto_0
    return v0

    .line 1263
    :cond_2
    add-long v2, p2, v7

    cmp-long v2, p0, v2

    if-gez v2, :cond_3

    .line 1264
    sub-long v2, p0, p2

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Lcom/android/server/power/DisplayPowerController;->lerp(FFF)F

    move-result v0

    goto :goto_0

    .line 1268
    :cond_3
    sub-long v2, p4, v7

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    .line 1269
    sub-long v2, p4, p0

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Lcom/android/server/power/DisplayPowerController;->lerp(FFF)F

    move-result v0

    goto :goto_0
.end method

.method private handleLightSensorEvent(JF)V
    .locals 2
    .parameter "time"
    .parameter "lux"

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1030
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurement(JF)V

    .line 1031
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLux(J)V

    .line 1032
    return-void
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 3
    .parameter "time"
    .parameter "positive"

    .prologue
    const/4 v2, 0x1

    .line 967
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 970
    :cond_1
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    if-ne v0, v2, :cond_2

    if-nez p3, :cond_0

    .line 976
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 977
    if-eqz p3, :cond_4

    .line 978
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 979
    const-wide/16 v0, 0x0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 984
    :goto_1
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 985
    const-string v0, "PowerManagerDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPendingProximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_3
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V

    goto :goto_0

    .line 981
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 982
    const-wide/16 v0, 0x64

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    goto :goto_1
.end method

.method private initialize()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 580
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 581
    .local v0, display:Landroid/view/Display;
    new-instance v1, Lcom/android/server/power/DisplayPowerState;

    new-instance v2, Lcom/android/server/power/ElectronBeam;

    invoke-direct {v2, v0}, Lcom/android/server/power/ElectronBeam;-><init>(Landroid/view/Display;)V

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    invoke-virtual {v4, v5}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/power/DisplayPowerState;-><init>(Lcom/android/server/power/ElectronBeam;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/LightsService$Light;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    .line 585
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v2, Lcom/android/server/power/DisplayPowerState;->ELECTRON_BEAM_LEVEL:Landroid/util/FloatProperty;

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    .line 587
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 588
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 590
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v2, Lcom/android/server/power/DisplayPowerState;->ELECTRON_BEAM_LEVEL:Landroid/util/FloatProperty;

    new-array v3, v6, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    .line 592
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 593
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 595
    new-instance v1, Lcom/android/server/power/RampAnimator;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v3, Lcom/android/server/power/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    invoke-direct {v1, v2, v3}, Lcom/android/server/power/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    .line 597
    return-void

    .line 585
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 590
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static lerp(FFF)F
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "alpha"

    .prologue
    .line 1277
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private static native nativeSetAALMode(I)V
.end method

.method private static native nativeSetLightSensorValue(I)V
.end method

.method private static native nativeSetScreenBrightness(I)V
.end method

.method private static native nativeSetScreenState(II)V
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .locals 2
    .parameter "value"

    .prologue
    .line 927
    invoke-static {p0}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    return v0
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 1392
    packed-switch p0, :pswitch_data_0

    .line 1400
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1394
    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    .line 1396
    :pswitch_1
    const-string v0, "Negative"

    goto :goto_0

    .line 1398
    :pswitch_2
    const-string v0, "Positive"

    goto :goto_0

    .line 1392
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendOnProximityNegative()V
    .locals 2

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1304
    return-void
.end method

.method private sendOnProximityPositive()V
    .locals 2

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1293
    return-void
.end method

.method private sendOnStateChanged()V
    .locals 2

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1282
    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 2

    .prologue
    .line 564
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 565
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 566
    monitor-exit v1

    .line 567
    return-void

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendUpdatePowerStateLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 570
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v1, :cond_0

    .line 571
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 572
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 573
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 574
    const-string v1, "PowerManagerDisplayController"

    const-string v2, "sendMessage."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 577
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setLightSensorEnabled(ZZ)V
    .locals 6
    .parameter "enable"
    .parameter "updateAutoBrightness"

    .prologue
    const/4 v5, 0x0

    .line 1005
    if-eqz p1, :cond_2

    .line 1006
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-nez v0, :cond_0

    .line 1007
    const/4 p2, 0x1

    .line 1008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    .line 1009
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    .line 1010
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    const v3, 0x186a0

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1022
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 1023
    invoke-direct {p0, v5}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 1025
    :cond_1
    return-void

    .line 1014
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1015
    iput-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    .line 1016
    iput-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    .line 1017
    iput v5, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    .line 1018
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1019
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v1, -0x1

    .line 949
    if-eqz p1, :cond_1

    .line 950
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 951
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 952
    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 953
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 957
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 958
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 959
    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 960
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 961
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private setScreenOn(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-ne v0, p1, :cond_0

    .line 890
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState;->setScreenOn(Z)V

    .line 891
    if-eqz p1, :cond_2

    .line 892
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenOn()V

    .line 906
    :cond_0
    :goto_1
    return-void

    .line 889
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 894
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenOff()V

    goto :goto_1
.end method

.method private unblockScreenOn()V
    .locals 6

    .prologue
    .line 879
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-eqz v0, :cond_0

    .line 880
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    .line 881
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 882
    const-string v0, "PowerManagerDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unblocked screen on after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_0
    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 13
    .parameter "time"

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, 0xc8

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 1056
    iget-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    sub-long v4, p1, v4

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 1058
    :cond_0
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1059
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    .line 1060
    iput v12, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1061
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1062
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 1063
    const-string v4, "PowerManagerDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Initializing: , mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_1
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 1174
    :cond_2
    :goto_0
    return-void

    .line 1073
    :cond_3
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v5, 0x3f8ccccd

    mul-float v0, v4, v5

    .line 1074
    .local v0, brighteningLuxThreshold:F
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_7

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_7

    .line 1076
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-gtz v4, :cond_4

    .line 1077
    iput v8, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1078
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1079
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 1080
    const-string v4, "PowerManagerDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Possibly brightened, waiting for 300 ms: brighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_4
    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    const-wide/16 v6, 0x12c

    add-long v2, v4, v6

    .line 1089
    .local v2, debounceTime:J
    cmp-long v4, p1, v2

    if-ltz v4, :cond_6

    .line 1090
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1091
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 1092
    const-string v4, "PowerManagerDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Brightened: brighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_5
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 1100
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_2

    .line 1101
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    add-long v5, p1, v10

    invoke-virtual {v4, v9, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 1105
    :cond_6
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v4, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 1111
    .end local v2           #debounceTime:J
    :cond_7
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v5, 0x3f4ccccd

    mul-float v1, v4, v5

    .line 1112
    .local v1, darkeningLuxThreshold:F
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_b

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_b

    .line 1114
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-ltz v4, :cond_8

    .line 1115
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1116
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1117
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_8

    .line 1118
    const-string v4, "PowerManagerDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Possibly darkened, waiting for 500 ms: darkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_8
    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    const-wide/16 v6, 0x1f4

    add-long v2, v4, v6

    .line 1127
    .restart local v2       #debounceTime:J
    cmp-long v4, p1, v2

    if-ltz v4, :cond_a

    .line 1130
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1131
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_9

    .line 1132
    const-string v4, "PowerManagerDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Darkened: darkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :cond_9
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 1140
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_2

    .line 1141
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    add-long v5, p1, v10

    invoke-virtual {v4, v9, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 1145
    :cond_a
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v4, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 1151
    .end local v2           #debounceTime:J
    :cond_b
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-eqz v4, :cond_c

    .line 1152
    iput v12, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1153
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1154
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_c

    .line 1155
    const-string v4, "PowerManagerDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Canceled debounce: brighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", darkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :cond_c
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    cmpl-float v4, v4, v0

    if-gtz v4, :cond_d

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_2

    .line 1171
    :cond_d
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    add-long v5, p1, v10

    invoke-virtual {v4, v9, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0
.end method

.method private updateAutoBrightness(Z)V
    .locals 14
    .parameter "sendUpdate"

    .prologue
    .line 1191
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v2, :cond_1

    .line 1255
    :cond_0
    :goto_0
    return-void

    .line 1201
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v13

    .line 1202
    .local v13, value:F
    const/high16 v8, 0x3f80

    .line 1204
    .local v8, gamma:F
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 1206
    const/high16 v2, 0x4040

    const/high16 v3, 0x3f80

    const/high16 v4, -0x4080

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v5, v5, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    neg-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Landroid/util/FloatMath;->pow(FF)F

    move-result v6

    .line 1209
    .local v6, adjGamma:F
    mul-float/2addr v8, v6

    .line 1210
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1211
    const-string v2, "PowerManagerDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAutoBrightness: adjGamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    .end local v6           #adjGamma:F
    :cond_2
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v2, :cond_3

    .line 1216
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    invoke-virtual {v2}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v12

    .line 1217
    .local v12, state:Lcom/android/server/TwilightService$TwilightState;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->isNight()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1219
    .local v0, now:J
    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->getYesterdaySunset()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->getTodaySunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getTwilightGamma(JJJ)F

    move-result v7

    .line 1221
    .local v7, earlyGamma:F
    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->getTodaySunset()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->getTomorrowSunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getTwilightGamma(JJJ)F

    move-result v10

    .line 1223
    .local v10, lateGamma:F
    mul-float v2, v7, v10

    mul-float/2addr v8, v2

    .line 1224
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1225
    const-string v2, "PowerManagerDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAutoBrightness: earlyGamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lateGamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    .end local v0           #now:J
    .end local v7           #earlyGamma:F
    .end local v10           #lateGamma:F
    .end local v12           #state:Lcom/android/server/TwilightService$TwilightState;
    :cond_3
    const/high16 v2, 0x3f80

    cmpl-float v2, v8, v2

    if-eqz v2, :cond_4

    .line 1232
    move v9, v13

    .line 1233
    .local v9, in:F
    invoke-static {v13, v8}, Landroid/util/FloatMath;->pow(FF)F

    move-result v13

    .line 1234
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 1235
    const-string v2, "PowerManagerDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAutoBrightness: gamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", in="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", out="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    .end local v9           #in:F
    :cond_4
    const/high16 v2, 0x437f

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightnessBaidu(I)I

    move-result v11

    .line 1242
    .local v11, newScreenAutoBrightness:I
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-eq v2, v11, :cond_0

    .line 1243
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 1244
    const-string v2, "PowerManagerDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAutoBrightness: mScreenAutoBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newScreenAutoBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_5
    iput v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 1250
    iput v8, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    .line 1251
    if-eqz p1, :cond_0

    .line 1252
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    goto/16 :goto_0
.end method

.method private updatePowerState()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, mustInitialize:Z
    iget-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    .line 620
    .local v4, updateAutoBrightness:Z
    const/4 v5, 0x0

    .line 621
    .local v5, wasDim:Z
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    .line 623
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 624
    const/4 v6, 0x0

    :try_start_0
    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 625
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v6, :cond_1

    .line 626
    monitor-exit v9

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v6, :cond_e

    .line 630
    new-instance v6, Lcom/android/server/power/DisplayPowerRequest;

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v6, v10}, Lcom/android/server/power/DisplayPowerRequest;-><init>(Lcom/android/server/power/DisplayPowerRequest;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    .line 631
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 632
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 633
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 634
    const/4 v0, 0x1

    .line 648
    :cond_2
    :goto_1
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    if-nez v6, :cond_11

    move v1, v7

    .line 649
    .local v1, mustNotify:Z
    :goto_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    if-eqz v0, :cond_4

    .line 653
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 654
    const-string v6, "PowerManagerDisplayController"

    const-string v9, "initialize."

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_3
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->initialize()V

    .line 660
    :cond_4
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v6, :cond_14

    .line 661
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 662
    const-string v6, "PowerManagerDisplayController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mProximity = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_5
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v6, v6, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v6, :cond_12

    .line 666
    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 667
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v6, :cond_7

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-ne v6, v7, :cond_7

    .line 669
    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 670
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityPositive()V

    .line 671
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_6

    .line 672
    const-string v6, "PowerManagerDisplayController"

    const-string v9, "setScreenOn false becaue of P-sensor."

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_6
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 685
    :cond_7
    :goto_3
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v6, :cond_8

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-eq v6, v7, :cond_8

    .line 687
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 688
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegative()V

    .line 695
    :cond_8
    :goto_4
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v6, :cond_9

    .line 697
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v6

    invoke-direct {p0, v6, v4}, Lcom/android/server/power/DisplayPowerController;->setLightSensorEnabled(ZZ)V

    .line 719
    :cond_9
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 724
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-ltz v6, :cond_15

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v6, v6, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v6, :cond_15

    .line 727
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 728
    .local v3, target:I
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    .line 729
    .local v2, slow:Z
    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    .line 739
    :goto_5
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-ne v6, v7, :cond_16

    .line 741
    add-int/lit8 v6, v3, -0xa

    iget v9, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 743
    const/4 v2, 0x0

    .line 758
    :cond_a
    :goto_6
    invoke-direct {p0, v3}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v9

    if-eqz v2, :cond_17

    const/16 v6, 0x28

    :goto_7
    invoke-direct {p0, v9, v6}, Lcom/android/server/power/DisplayPowerController;->animateScreenBrightness(II)V

    .line 766
    .end local v2           #slow:Z
    .end local v3           #target:I
    :goto_8
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v6, :cond_c

    .line 767
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 772
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v6

    if-nez v6, :cond_c

    .line 776
    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 777
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_b

    .line 778
    const-string v6, "PowerManagerDisplayController"

    const-string v7, "setScreenOn true"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_b
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v6, v6, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v6}, Lcom/android/server/power/DisplayPowerState;->getElectronBeamLevel()F

    move-result v6

    cmpl-float v6, v6, v11

    if-nez v6, :cond_19

    .line 783
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->blockScreenOn()V

    .line 784
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v6}, Lcom/android/server/power/DisplayPowerState;->updateElectronBeam()V

    .line 850
    :cond_c
    :goto_9
    if-eqz v1, :cond_0

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lcom/android/server/power/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 855
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 856
    :try_start_1
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v6, :cond_d

    .line 857
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 859
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_d

    .line 860
    const-string v6, "PowerManagerDisplayController"

    const-string v8, "Display ready!"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_d
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 864
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnStateChanged()V

    goto/16 :goto_0

    .line 635
    .end local v1           #mustNotify:Z
    :cond_e
    :try_start_2
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v6, :cond_2

    .line 636
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    iget v10, v10, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_f

    .line 638
    const/4 v4, 0x1

    .line 640
    :cond_f
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-ne v6, v7, :cond_10

    move v5, v7

    .line 641
    :goto_a
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v6, v10}, Lcom/android/server/power/DisplayPowerRequest;->copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V

    .line 642
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v6, v10

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 643
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 644
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 645
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    goto/16 :goto_1

    .line 649
    :catchall_0
    move-exception v6

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    :cond_10
    move v5, v8

    .line 640
    goto :goto_a

    :cond_11
    move v1, v8

    .line 648
    goto/16 :goto_2

    .line 676
    .restart local v1       #mustNotify:Z
    :cond_12
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v6, :cond_13

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v6, :cond_13

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-ne v6, v7, :cond_13

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v6, :cond_13

    .line 680
    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto/16 :goto_3

    .line 682
    :cond_13
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 683
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_3

    .line 691
    :cond_14
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_4

    .line 735
    :cond_15
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v3, v6, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    .line 736
    .restart local v3       #target:I
    const/4 v2, 0x0

    .line 737
    .restart local v2       #slow:Z
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    goto/16 :goto_5

    .line 749
    :cond_16
    if-eqz v5, :cond_a

    .line 751
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 758
    :cond_17
    const/16 v6, 0xc8

    goto/16 :goto_7

    .line 762
    .end local v2           #slow:Z
    .end local v3           #target:I
    :cond_18
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    goto/16 :goto_8

    .line 791
    :cond_19
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    .line 806
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    const/high16 v7, 0x3f80

    invoke-virtual {v6, v7}, Lcom/android/server/power/DisplayPowerState;->setElectronBeamLevel(F)V

    .line 807
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v6}, Lcom/android/server/power/DisplayPowerState;->dismissElectronBeam()V

    goto/16 :goto_9

    .line 816
    :cond_1a
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v6

    if-nez v6, :cond_c

    .line 817
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v6

    if-nez v6, :cond_c

    .line 818
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v6}, Lcom/android/server/power/DisplayPowerState;->getElectronBeamLevel()F

    move-result v6

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_1b

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mShutDownFlag_D:Z

    if-eqz v6, :cond_1d

    .line 819
    :cond_1b
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 820
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mShutDownFlag_D:Z

    .line 821
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_1c

    .line 822
    const-string v6, "PowerManagerDisplayController"

    const-string v7, "setScreenOn true"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_1c
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    goto/16 :goto_9

    .line 829
    :cond_1d
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfig:Z

    if-eqz v6, :cond_1e

    const/4 v6, 0x2

    :goto_b
    invoke-virtual {v8, v6}, Lcom/android/server/power/DisplayPowerState;->prepareElectronBeam(I)Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v6}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 834
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 836
    const-string v6, "PowerManagerDisplayController"

    const-string v7, "mElectronBeamOffAnimator.start"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_1e
    move v6, v7

    .line 829
    goto :goto_b

    .line 838
    :cond_1f
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->end()V

    goto/16 :goto_9

    .line 863
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6
.end method

.method private static wantScreenOn(I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 1405
    packed-switch p0, :pswitch_data_0

    .line 1410
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1408
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1405
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "pw"

    .prologue
    .line 1314
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1315
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1316
    const-string v0, "Display Controller Locked State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1323
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1325
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1326
    const-string v0, "Display Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1335
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/power/DisplayPowerController$7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/DisplayPowerController$7;-><init>(Lcom/android/server/power/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1341
    return-void

    .line 1323
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isInDarkEnvironment()Z
    .locals 2

    .prologue
    .line 1491
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mButtonBrightness:F

    const/high16 v1, 0x437f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 1492
    const/4 v0, 0x1

    .line 1494
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestPowerState(Lcom/android/server/power/DisplayPowerRequest;Z)Z
    .locals 4
    .parameter "request"
    .parameter "waitForNegativeProximity"

    .prologue
    .line 528
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 529
    const-string v1, "PowerManagerDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPowerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", waitForNegativeProximity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 534
    const/4 v0, 0x0

    .line 536
    .local v0, changed:Z
    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v1, :cond_1

    .line 538
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 539
    const/4 v0, 0x1

    .line 542
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v1, :cond_5

    .line 543
    new-instance v1, Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;-><init>(Lcom/android/server/power/DisplayPowerRequest;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    .line 544
    const/4 v0, 0x1

    .line 550
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 551
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 554
    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v1, :cond_4

    .line 555
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 556
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 559
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v2

    return v1

    .line 545
    :cond_5
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;->equals(Lcom/android/server/power/DisplayPowerRequest;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 546
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;->copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V

    .line 547
    const/4 v0, 0x1

    goto :goto_0

    .line 560
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clampScreenBrightnessBaidu(I)I
    .locals 5
    .parameter "value"

    .prologue
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v3, v4}, Lcom/android/server/power/DisplayPowerController;->clamp(III)I

    move-result v1

    .local v1, brightness:I
    const/16 v0, 0x64

    .local v0, DEFAULT_BRIGHTNESS_COE:I
    const-string v3, "persist.sys.brightness_coe"

    const/16 v4, 0x64

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .local v2, brightnessCoe:I
    mul-int v3, v1, v2

    div-int/lit8 v1, v3, 0x64

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method
