.class public Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "VibrationIntensityPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/VibrationIntensityPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# static fields
.field private static final DATABASE_MIN_VIBRATION_INTENSITY:I = -0x1

.field private static final DEFAULT_VIBRATION_INTENSITY:I = 0x1


# instance fields
.field private final MAX_VIBRATION_LEVEL:I

.field private final VIBRATION_TIME_LONG:I

.field private final VIBRATION_TIME_SHORT:I

.field private mContext:Landroid/content/Context;

.field private mDataBaseValue:I

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mOriginalIntensity:I

.field private final mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarType:I

.field final synthetic this$0:Lcom/mediatek/audioprofile/VibrationIntensityPreference;


# direct methods
.method public constructor <init>(Lcom/mediatek/audioprofile/VibrationIntensityPreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "seekBarType"

    .prologue
    const/4 v1, -0x1

    .line 446
    iput-object p1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/VibrationIntensityPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 421
    iput v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mSeekBarType:I

    .line 422
    iput v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mOriginalIntensity:I

    .line 423
    iput v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mLastProgress:I

    .line 424
    iput v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mDataBaseValue:I

    .line 429
    const/16 v0, 0x12c

    iput v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->VIBRATION_TIME_SHORT:I

    .line 431
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->VIBRATION_TIME_LONG:I

    .line 433
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->MAX_VIBRATION_LEVEL:I

    .line 447
    iput-object p2, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 448
    iput p4, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mSeekBarType:I

    .line 449
    iput-object p3, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 450
    invoke-direct {p0, p3}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;)V

    .line 451
    return-void
.end method

.method private initSeekBar(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 463
    const-string v0, "Settings/VibrationIntensityPref"

    const-string v1, "initSeekBar"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {p1, v3}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 465
    iget v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 466
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 468
    iget v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mSeekBarType:I

    if-nez v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_vibration_intensity"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mOriginalIntensity:I

    .line 478
    :cond_0
    :goto_0
    iget v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mOriginalIntensity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mLastProgress:I

    .line 479
    iget v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 480
    const-string v0, "Settings/VibrationIntensityPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekBar.setProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void

    .line 471
    :cond_1
    iget v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mSeekBarType:I

    if-ne v0, v2, :cond_2

    .line 472
    iget-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_vibration_intensity"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mOriginalIntensity:I

    goto :goto_0

    .line 474
    :cond_2
    iget v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mSeekBarType:I

    if-ne v0, v3, :cond_0

    .line 475
    iget-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "general_vibration_intensity"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mOriginalIntensity:I

    goto :goto_0
.end method

.method private sample()V
    .locals 7

    .prologue
    .line 669
    invoke-static {}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;->getInstance()Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;

    move-result-object v1

    .line 670
    .local v1, manager:Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;
    if-eqz v1, :cond_0

    .line 671
    const-wide/16 v2, 0x12c

    .line 672
    .local v2, vibrate_time:J
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->getDataBaseValue()I

    move-result v0

    .line 673
    .local v0, level:I
    iget v4, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mLastProgress:I

    if-lez v4, :cond_1

    .line 674
    invoke-virtual {v1, v0}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;->changeVibrationIntensity(I)Z

    .line 675
    packed-switch v0, :pswitch_data_0

    .line 680
    const-wide/16 v2, 0x12c

    .line 683
    :goto_0
    const-string v4, "Settings/VibrationIntensityPref"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sample vibrate at level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v4, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/VibrationIntensityPreference;

    #getter for: Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mVibratorManager:Landroid/os/Vibrator;
    invoke-static {v4}, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->access$100(Lcom/mediatek/audioprofile/VibrationIntensityPreference;)Landroid/os/Vibrator;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 689
    .end local v0           #level:I
    .end local v2           #vibrate_time:J
    :cond_0
    :goto_1
    return-void

    .line 677
    .restart local v0       #level:I
    .restart local v2       #vibrate_time:J
    :pswitch_0
    const-wide/16 v2, 0x1f4

    .line 678
    goto :goto_0

    .line 686
    :cond_1
    iget-object v4, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/VibrationIntensityPreference;

    #getter for: Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mVibratorManager:Landroid/os/Vibrator;
    invoke-static {v4}, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->access$100(Lcom/mediatek/audioprofile/VibrationIntensityPreference;)Landroid/os/Vibrator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Vibrator;->cancel()V

    goto :goto_1

    .line 675
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public changeIntensityBy(I)V
    .locals 1
    .parameter "amount"

    .prologue
    .line 712
    iget-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 713
    iget-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->postSetVibrationIntensity(I)V

    .line 714
    return-void
.end method

.method public getDataBaseValue()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mDataBaseValue:I

    return v0
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 611
    const-string v0, "Settings/VibrationIntensityPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged: progress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : fromTouch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iput p2, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mLastProgress:I

    .line 614
    iget v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->setDataBaseValue(I)V

    .line 615
    const-string v0, "Settings/VibrationIntensityPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged mLastProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    if-nez p3, :cond_0

    .line 620
    :goto_0
    return-void

    .line 619
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->postSetVibrationIntensity(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;)V
    .locals 2
    .parameter "vibrationIntensityStore"

    .prologue
    .line 743
    iget v0, p1, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;->mIntensity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 744
    iget v0, p1, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;->mIntensity:I

    iput v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mLastProgress:I

    .line 745
    iget v0, p1, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;->mOriginalIntensity:I

    iput v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mOriginalIntensity:I

    .line 746
    iget v0, p1, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;->mDataBaseValue:I

    iput v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mDataBaseValue:I

    .line 747
    iget v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->postSetVibrationIntensity(I)V

    .line 749
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;)V
    .locals 1
    .parameter "vibrationIntensityStore"

    .prologue
    .line 726
    iget v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 727
    iget v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;->mIntensity:I

    .line 728
    iget v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mOriginalIntensity:I

    iput v0, p1, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;->mOriginalIntensity:I

    .line 729
    iget v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mDataBaseValue:I

    iput v0, p1, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;->mDataBaseValue:I

    .line 731
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 598
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->sample()V

    .line 646
    return-void
.end method

.method postSetVibrationIntensity(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 632
    iget-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 633
    iget-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 634
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 509
    iget v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mOriginalIntensity:I

    iput v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mLastProgress:I

    .line 510
    iget-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 513
    :cond_0
    const-string v0, "Settings/VibrationIntensityPref"

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void
.end method

.method public revertVibrationIntensity()V
    .locals 5

    .prologue
    .line 526
    invoke-static {}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;->getInstance()Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;

    move-result-object v0

    .line 527
    .local v0, instance:Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;
    if-eqz v0, :cond_0

    .line 529
    iget-object v2, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "general_vibration_intensity"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 531
    .local v1, intensity:I
    if-lez v1, :cond_1

    .line 532
    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;->changeVibrationIntensity(I)Z

    .line 538
    .end local v1           #intensity:I
    :cond_0
    :goto_0
    return-void

    .line 535
    .restart local v1       #intensity:I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/VibrationIntensityPreference;

    #getter for: Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mVibratorManager:Landroid/os/Vibrator;
    invoke-static {v2}, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->access$100(Lcom/mediatek/audioprofile/VibrationIntensityPreference;)Landroid/os/Vibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->sample()V

    .line 658
    return-void
.end method

.method public saveVibrationIntensity()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x1

    .line 575
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->getDataBaseValue()I

    move-result v0

    .line 576
    .local v0, dataBaseValue:I
    iget v3, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mSeekBarType:I

    if-nez v3, :cond_2

    .line 577
    iget-object v3, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "call_vibration_intensity"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 578
    iget-object v3, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/VibrationIntensityPreference;

    #getter for: Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v3}, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->access$200(Lcom/mediatek/audioprofile/VibrationIntensityPreference;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/VibrationIntensityPreference;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->getProfile()Ljava/lang/String;

    move-result-object v4

    if-le v0, v5, :cond_1

    :goto_0
    invoke-virtual {v3, v4, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setVibrationEnabled(Ljava/lang/String;Z)V

    .line 585
    :cond_0
    :goto_1
    const-string v1, "Settings/VibrationIntensityPref"

    const-string v2, "saveVibrationIntensity"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-void

    :cond_1
    move v1, v2

    .line 578
    goto :goto_0

    .line 579
    :cond_2
    iget v3, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mSeekBarType:I

    if-ne v3, v1, :cond_3

    .line 580
    iget-object v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_vibration_intensity"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 581
    :cond_3
    iget v3, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mSeekBarType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 582
    iget-object v3, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "general_vibration_intensity"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 583
    iget-object v3, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/VibrationIntensityPreference;

    #getter for: Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v3}, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->access$200(Lcom/mediatek/audioprofile/VibrationIntensityPreference;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/VibrationIntensityPreference;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->getProfile()Ljava/lang/String;

    move-result-object v4

    if-le v0, v5, :cond_4

    :goto_2
    invoke-virtual {v3, v4, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setHapticFeedbackEnabled(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public setDataBaseValue(I)V
    .locals 1
    .parameter "mDataBaseValue"

    .prologue
    .line 563
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mDataBaseValue:I

    .line 564
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 493
    iget-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 494
    iput-object v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 495
    iput-object v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 496
    const-string v0, "Settings/VibrationIntensityPref"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void
.end method
