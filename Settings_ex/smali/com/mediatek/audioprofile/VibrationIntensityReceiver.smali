.class public Lcom/mediatek/audioprofile/VibrationIntensityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VibrationIntensityReceiver.java"


# static fields
.field private static final DEFAULT_VIBRATION_INTENSITY:I = 0x2

.field private static final MIN_VIBRATION_INTENSITY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Settings/VibrationIntensityReceiver"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mediatek/audioprofile/VibrationIntensityReceiver;->mContext:Landroid/content/Context;

    .line 58
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    invoke-static {}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;->getInstance()Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;

    move-result-object v3

    .line 60
    .local v3, mVibrationIntensityManager:Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;
    const-string v5, "vibrator"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 61
    .local v4, mVibratorManager:Landroid/os/Vibrator;
    const-string v5, "audioprofile"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 63
    .local v2, mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "general_vibration_intensity"

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 66
    .local v0, intensity:I
    const/4 v5, -0x1

    if-le v0, v5, :cond_1

    .line 67
    invoke-virtual {v3, v0}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;->changeVibrationIntensity(I)Z

    .line 68
    const-string v5, "Settings/VibrationIntensityReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VibrationIntensityReceiver  changeVibrationIntensity  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v0           #intensity:I
    .end local v2           #mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    .end local v3           #mVibrationIntensityManager:Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;
    .end local v4           #mVibratorManager:Landroid/os/Vibrator;
    :cond_0
    :goto_0
    return-void

    .line 70
    .restart local v0       #intensity:I
    .restart local v2       #mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    .restart local v3       #mVibrationIntensityManager:Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;
    .restart local v4       #mVibratorManager:Landroid/os/Vibrator;
    :cond_1
    if-eqz v4, :cond_2

    .line 72
    invoke-virtual {v4}, Landroid/os/Vibrator;->cancel()V

    .line 73
    const-string v5, "Settings/VibrationIntensityReceiver"

    const-string v6, "VibrationIntensityReceiver  mVibratorManager.cancel"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_2
    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, key:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 79
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->setHapticFeedbackEnabled(Ljava/lang/String;Z)V

    .line 80
    const-string v5, "Settings/VibrationIntensityReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VibrationIntensityReceiver  setHapticFeedbackEnabled key ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
