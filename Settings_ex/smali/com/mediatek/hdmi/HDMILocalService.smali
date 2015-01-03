.class public Lcom/mediatek/hdmi/HDMILocalService;
.super Landroid/app/Service;
.source "HDMILocalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hdmi/HDMILocalService$HDMIServiceReceiver;,
        Lcom/mediatek/hdmi/HDMILocalService$LocalBinder;
    }
.end annotation


# static fields
.field public static final ACTION_CABLE_STATE_CHANGED:Ljava/lang/String; = "com.mediatek.hdmi.localservice.action.CABLE_STATE_CHANGED"

.field public static final ACTION_EDID_UPDATED:Ljava/lang/String; = "com.mediatek.hdmi.localservice.action.EDID_UPDATED"

.field public static final ACTION_IPO_BOOTUP:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field public static final ACTION_IPO_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final AP_CFG_RDCL_FILE_HDCP_KEY_LID:I = 0x2a

.field private static final GET_HDMI_AUDIO_STATUS:Ljava/lang/String; = "GetHDMIAudioStatus"

.field private static final HDMI_AUDIO_STATUS_DISABLED:Ljava/lang/String; = "GetHDMIAudioStatus=false"

.field private static final HDMI_AUDIO_STATUS_ENABLED:Ljava/lang/String; = "GetHDMIAudioStatus=true"

.field public static final KEY_HDMI_AUDIO_STATUS:Ljava/lang/String; = "hdmi_audio_status"

.field public static final KEY_HDMI_COLOR_SPACE:Ljava/lang/String; = "hdmi_color_space"

.field public static final KEY_HDMI_DEEP_COLOR:Ljava/lang/String; = "hdmi_deep_color"

.field public static final KEY_HDMI_ENABLE_STATUS:Ljava/lang/String; = "hdmi_enable_status"

.field public static final KEY_HDMI_VIDEO_RESOLUTION:Ljava/lang/String; = "hdmi_video_resolution"

.field public static final KEY_HDMI_VIDEO_STATUS:Ljava/lang/String; = "hdmi_video_status"

.field private static final LOCAL_TAG:Ljava/lang/String; = " >> HDMILocalService."

.field private static final SET_HDMI_AUDIO_DISABLED:Ljava/lang/String; = "SetHDMIAudioEnable=0"

.field private static final SET_HDMI_AUDIO_ENABLED:Ljava/lang/String; = "SetHDMIAudioEnable=1"

.field private static final SLEEP_TIME:I = 0x8c

.field private static final TAG:Ljava/lang/String; = "hdmi"

.field public static sCECCmd:[I

.field public static sEdid:[I

.field public static sEdidPrev:[I

.field private static sHMDIAudioTargetState:Z

.field private static sHMDITargetState:Z

.field private static sHMDIVideoTargetState:Z

.field private static sIsCablePluged:Z

.field private static sIsCallStateIdle:Z

.field private static sIsRunning:Z

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sWiredHeadSetPlugState:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBinder:Landroid/os/IBinder;

.field private mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Lcom/mediatek/hdmi/HDMILocalService$HDMIServiceReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 52
    sput-boolean v0, Lcom/mediatek/hdmi/HDMILocalService;->sIsRunning:Z

    .line 53
    sput-boolean v2, Lcom/mediatek/hdmi/HDMILocalService;->sIsCablePluged:Z

    .line 54
    sput v2, Lcom/mediatek/hdmi/HDMILocalService;->sWiredHeadSetPlugState:I

    .line 55
    sput-boolean v0, Lcom/mediatek/hdmi/HDMILocalService;->sIsCallStateIdle:Z

    .line 57
    sput-object v1, Lcom/mediatek/hdmi/HDMILocalService;->sEdid:[I

    .line 58
    sput-object v1, Lcom/mediatek/hdmi/HDMILocalService;->sEdidPrev:[I

    .line 59
    sput-object v1, Lcom/mediatek/hdmi/HDMILocalService;->sCECCmd:[I

    .line 65
    sput-boolean v0, Lcom/mediatek/hdmi/HDMILocalService;->sHMDIAudioTargetState:Z

    .line 66
    sput-boolean v0, Lcom/mediatek/hdmi/HDMILocalService;->sHMDITargetState:Z

    .line 67
    sput-boolean v0, Lcom/mediatek/hdmi/HDMILocalService;->sHMDIVideoTargetState:Z

    .line 71
    sput-object v1, Lcom/mediatek/hdmi/HDMILocalService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/mediatek/hdmi/HDMILocalService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    .line 69
    iput-object v1, p0, Lcom/mediatek/hdmi/HDMILocalService;->mAudioManager:Landroid/media/AudioManager;

    .line 70
    iput-object v1, p0, Lcom/mediatek/hdmi/HDMILocalService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 83
    new-instance v0, Lcom/mediatek/hdmi/HDMILocalService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/mediatek/hdmi/HDMILocalService$LocalBinder;-><init>(Lcom/mediatek/hdmi/HDMILocalService;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/HDMILocalService;->mBinder:Landroid/os/IBinder;

    .line 84
    iput-object v1, p0, Lcom/mediatek/hdmi/HDMILocalService;->mReceiver:Lcom/mediatek/hdmi/HDMILocalService$HDMIServiceReceiver;

    .line 123
    new-instance v0, Lcom/mediatek/hdmi/HDMILocalService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/hdmi/HDMILocalService$1;-><init>(Lcom/mediatek/hdmi/HDMILocalService;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/HDMILocalService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    sput-boolean p0, Lcom/mediatek/hdmi/HDMILocalService;->sIsCablePluged:Z

    return p0
.end method

.method static synthetic access$100(Lcom/mediatek/hdmi/HDMILocalService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMILocalService;->dealWithCablePluged()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/hdmi/HDMILocalService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/HDMILocalService;->dealWithIPO(Z)V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    sput-boolean p0, Lcom/mediatek/hdmi/HDMILocalService;->sIsCallStateIdle:Z

    return p0
.end method

.method static synthetic access$400(Lcom/mediatek/hdmi/HDMILocalService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMILocalService;->dealWithCallStateChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/hdmi/HDMILocalService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMILocalService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/hdmi/HDMILocalService;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mediatek/hdmi/HDMILocalService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method private dealWithCablePluged()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 590
    const-string v2, "hdmi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " >> HDMILocalService.dealWithCablePluged(), is cable pluged in?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/mediatek/hdmi/HDMILocalService;->sIsCablePluged:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.hdmi.localservice.action.CABLE_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "cable_pluged"

    sget-boolean v3, Lcom/mediatek/hdmi/HDMILocalService;->sIsCablePluged:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 594
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 595
    sget-boolean v2, Lcom/mediatek/hdmi/HDMILocalService;->sIsCablePluged:Z

    invoke-direct {p0, v2}, Lcom/mediatek/hdmi/HDMILocalService;->showNotification(Z)V

    .line 597
    sget-boolean v2, Lcom/mediatek/hdmi/HDMILocalService;->sIsCablePluged:Z

    if-eqz v2, :cond_1

    .line 601
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMILocalService;->updateAudioState()Z

    .line 602
    sget-boolean v2, Lcom/mediatek/hdmi/HDMILocalService;->sHMDIVideoTargetState:Z

    invoke-direct {p0, v2}, Lcom/mediatek/hdmi/HDMILocalService;->enableVideoImp(Z)Z

    .line 606
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMILocalService;->initVideoResolution()V

    .line 607
    iget-object v2, p0, Lcom/mediatek/hdmi/HDMILocalService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v2}, Lcom/mediatek/common/hdmi/IHDMINative;->ishdmiForceAwake()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    .line 609
    sget-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    const-string v2, "hdmi"

    const-string v3, " >> HDMILocalService.dealWithCablePluged() sleep 140ms for audio"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-wide/16 v2, 0x8c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :goto_1
    invoke-direct {p0, v5}, Lcom/mediatek/hdmi/HDMILocalService;->enableAudioImp(Z)Z

    .line 624
    invoke-direct {p0, v5}, Lcom/mediatek/hdmi/HDMILocalService;->enableVideoImp(Z)Z

    .line 625
    iget-object v2, p0, Lcom/mediatek/hdmi/HDMILocalService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v2}, Lcom/mediatek/common/hdmi/IHDMINative;->ishdmiForceAwake()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    sget-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private dealWithCallStateChanged()V
    .locals 2

    .prologue
    .line 687
    const-string v0, "hdmi"

    const-string v1, " >> HDMILocalService.updateAudioStateByPhone()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    sget-boolean v0, Lcom/mediatek/hdmi/HDMILocalService;->sHMDIAudioTargetState:Z

    if-eqz v0, :cond_0

    .line 689
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMILocalService;->updateAudioState()Z

    .line 693
    :goto_0
    return-void

    .line 691
    :cond_0
    const-string v0, "hdmi"

    const-string v1, " >> HDMILocalService. audio was off, just return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dealWithHeadSetChanged()V
    .locals 3

    .prologue
    .line 674
    const-string v0, "hdmi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " >> HDMILocalService.dealWithHeadSetChanged(), headset new state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/hdmi/HDMILocalService;->sWiredHeadSetPlugState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    sget-boolean v0, Lcom/mediatek/hdmi/HDMILocalService;->sHMDIAudioTargetState:Z

    if-eqz v0, :cond_0

    .line 677
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMILocalService;->updateAudioState()Z

    .line 681
    :goto_0
    return-void

    .line 679
    :cond_0
    const-string v0, "hdmi"

    const-string v1, " >> HDMILocalService. audio was off, just return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dealWithIPO(Z)V
    .locals 3
    .parameter "isBootUp"

    .prologue
    .line 720
    const-string v0, "hdmi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dealWithIPO(), is bootUp?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sHMDITargetState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/hdmi/HDMILocalService;->sHMDITargetState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    sget-boolean v0, Lcom/mediatek/hdmi/HDMILocalService;->sHMDITargetState:Z

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMILocalService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v0, p1}, Lcom/mediatek/common/hdmi/IHDMINative;->enableHDMI(Z)Z

    .line 725
    :cond_0
    if-eqz p1, :cond_1

    .line 726
    const-string v0, "hdmi"

    const-string v1, "reset audio state for IPO boot up"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMILocalService;->updateAudioState()Z

    .line 732
    :goto_0
    return-void

    .line 729
    :cond_1
    const-string v0, "hdmi"

    const-string v1, "shut down audio for IPO shut down"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/hdmi/HDMILocalService;->enableAudioImp(Z)Z

    goto :goto_0
.end method

.method private enableAudioImp(Z)Z
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 291
    const-string v1, "hdmi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " >> HDMILocalService.enableAudioImp("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, state:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/hdmi/HDMILocalService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 294
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/mediatek/hdmi/HDMILocalService;->mAudioManager:Landroid/media/AudioManager;

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/mediatek/hdmi/HDMILocalService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_5

    .line 297
    iget-object v1, p0, Lcom/mediatek/hdmi/HDMILocalService;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "GetHDMIAudioStatus"

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    if-eqz p1, :cond_1

    const-string v1, "GetHDMIAudioStatus=true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-nez p1, :cond_3

    const-string v1, "GetHDMIAudioStatus=false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 300
    :cond_2
    const-string v1, "hdmi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " >> HDMILocalService.  audio driver status is already what we need ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 319
    :goto_0
    return v1

    .line 305
    :cond_3
    iget-object v1, p0, Lcom/mediatek/hdmi/HDMILocalService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->enableHDMIAudio(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 306
    const-string v1, "hdmi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " >> HDMILocalService.enableAudio("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 308
    goto :goto_0

    .line 310
    :cond_4
    const-string v1, "hdmi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " >> HDMILocalService.enableAudio("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") fail, current state="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 312
    goto :goto_0

    .line 316
    :cond_5
    const-string v1, "hdmi"

    const-string v2, ">>HDMILocalService.enableAudio(), fail to get AudioManager service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 319
    goto :goto_0
.end method

.method private enableHDMIImpl(Z)Z
    .locals 3
    .parameter "enabled"

    .prologue
    .line 273
    const-string v0, "hdmi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " >> HDMILocalService.enableHDMIImpl(), new state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMILocalService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v0, p1}, Lcom/mediatek/common/hdmi/IHDMINative;->enableHDMI(Z)Z

    move-result v0

    return v0
.end method

.method private enableVideoImp(Z)Z
    .locals 3
    .parameter "enabled"

    .prologue
    .line 336
    const-string v0, "hdmi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>HDMILocalService.enableVideoImp, new state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMILocalService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v0, p1}, Lcom/mediatek/common/hdmi/IHDMINative;->enableVideo(Z)Z

    move-result v0

    return v0
.end method

.method private initColorSpaceAndDeepColor()V
    .locals 2

    .prologue
    .line 571
    const-string v0, "hdmi"

    const-string v1, ">>HDMILocalService.initColorSpaceAndDeepColor(), init color space=RGB, init deep color=8bit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/hdmi/HDMILocalService;->setDeepColor(II)Z

    .line 575
    return-void
.end method

.method private initHDMITargetState()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 196
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "hdmi_enable_status"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 198
    .local v1, initHDMIState:I
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "hdmi_audio_status"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 200
    .local v0, initHDMIAudioState:I
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "hdmi_video_status"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 202
    .local v2, initHDMIVideoState:I
    const-string v3, "hdmi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " >> HDMILocalService.initHDMITargetState(), initHDMIState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", initHDMIAudioState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", initHDMIVideoState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    if-ne v1, v4, :cond_0

    move v3, v4

    :goto_0
    sput-boolean v3, Lcom/mediatek/hdmi/HDMILocalService;->sHMDITargetState:Z

    .line 206
    if-ne v0, v4, :cond_1

    move v3, v4

    :goto_1
    sput-boolean v3, Lcom/mediatek/hdmi/HDMILocalService;->sHMDIAudioTargetState:Z

    .line 207
    if-ne v2, v4, :cond_2

    move v3, v4

    :goto_2
    sput-boolean v3, Lcom/mediatek/hdmi/HDMILocalService;->sHMDIVideoTargetState:Z

    .line 209
    sget-boolean v3, Lcom/mediatek/hdmi/HDMILocalService;->sHMDITargetState:Z

    if-eqz v3, :cond_3

    .line 210
    const-string v3, "hdmi"

    const-string v5, " >> HDMILocalService. enable HDMI after boot up complete"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/HDMILocalService;->enableHDMI(Z)Z

    .line 216
    :goto_3
    return-void

    :cond_0
    move v3, v5

    .line 205
    goto :goto_0

    :cond_1
    move v3, v5

    .line 206
    goto :goto_1

    :cond_2
    move v3, v5

    .line 207
    goto :goto_2

    .line 213
    :cond_3
    const-string v3, "hdmi"

    const-string v4, " >> HDMILocalService. disable HDMI after boot up complete"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0, v5}, Lcom/mediatek/hdmi/HDMILocalService;->enableHDMI(Z)Z

    goto :goto_3
.end method

.method private initVideoResolution()V
    .locals 4

    .prologue
    .line 514
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hdmi_video_resolution"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, videoResolution:Ljava/lang/String;
    const-string v1, "hdmi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>HDMILocalService.initVideoResolution(), init resolution="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    :cond_0
    const-string v1, "hdmi"

    const-string v2, ">>No init resolution, set it to Auto by default"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-string v0, "3"

    .line 522
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/hdmi/HDMILocalService;->setVideoResolution(I)Z

    .line 524
    return-void
.end method

.method private initVideoResolution8193()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, isChanged:Z
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hdmi_video_resolution"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, videoResolution:Ljava/lang/String;
    const-string v2, "hdmi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>HDMILocalService.initVideoResolution8193(), init resolution="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    sget-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sEdidPrev:[I

    if-nez v2, :cond_2

    .line 534
    const/4 v0, 0x0

    .line 541
    :goto_0
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    .line 542
    :cond_0
    const-string v2, "hdmi"

    const-string v3, ">>No init resolution or EDID changed, set it by default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    sget-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sEdid:[I

    if-eqz v2, :cond_8

    .line 546
    sget-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sEdid:[I

    aget v2, v2, v6

    shr-int/lit8 v2, v2, 0x1

    and-int/lit8 v2, v2, 0x1

    if-ne v5, v2, :cond_4

    .line 548
    const-string v1, "2"

    .line 565
    :cond_1
    :goto_1
    const-string v2, "hdmi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>Final resolution in init resolution is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hdmi_video_resolution"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 567
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mediatek/hdmi/HDMILocalService;->setVideoResolution(I)Z

    .line 568
    return-void

    .line 535
    :cond_2
    sget-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sEdid:[I

    sget-object v3, Lcom/mediatek/hdmi/HDMILocalService;->sEdidPrev:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 536
    const/4 v0, 0x0

    goto :goto_0

    .line 538
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 549
    :cond_4
    sget-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sEdid:[I

    aget v2, v2, v5

    shr-int/lit8 v2, v2, 0xb

    and-int/lit8 v2, v2, 0x1

    if-ne v5, v2, :cond_5

    .line 551
    const-string v1, "3"

    goto :goto_1

    .line 552
    :cond_5
    sget-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sEdid:[I

    aget v2, v2, v6

    and-int/lit8 v2, v2, 0x1

    if-ne v5, v2, :cond_6

    .line 554
    const-string v1, "100"

    goto :goto_1

    .line 555
    :cond_6
    sget-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sEdid:[I

    aget v2, v2, v5

    shr-int/lit8 v2, v2, 0xa

    and-int/lit8 v2, v2, 0x1

    if-ne v5, v2, :cond_7

    .line 557
    const-string v1, "101"

    goto :goto_1

    .line 559
    :cond_7
    const-string v1, "100"

    goto :goto_1

    .line 562
    :cond_8
    const-string v1, "100"

    goto :goto_1
.end method

.method private showNotification(Z)V
    .locals 11
    .parameter "hasCable"

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f020068

    .line 633
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 634
    .local v3, notificationManager:Landroid/app/NotificationManager;
    if-nez v3, :cond_0

    .line 635
    const-string v6, "hdmi"

    const-string v7, "Fail to get NotificationManager instance"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :goto_0
    return-void

    .line 638
    :cond_0
    if-eqz p1, :cond_1

    .line 639
    const-string v6, "hdmi"

    const-string v7, "HDMI cable is pluged in, give notification now"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 641
    .local v2, notification:Landroid/app/Notification;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b00be

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 643
    .local v5, titleStr:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b00bf

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, contentStr:Ljava/lang/String;
    iput v9, v2, Landroid/app/Notification;->icon:I

    .line 646
    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 653
    const/16 v6, 0x23

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 657
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.android.settings_ex"

    const-string v8, "com.android.settings_ex.HDMISettings"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 661
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0, v10, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 663
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v2, p0, v5, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 665
    invoke-virtual {v3, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 668
    .end local v0           #contentStr:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #notification:Landroid/app/Notification;
    .end local v4           #pendingIntent:Landroid/app/PendingIntent;
    .end local v5           #titleStr:Ljava/lang/String;
    :cond_1
    const-string v6, "hdmi"

    const-string v7, "HDMI cable is pluged out, clear notification now"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-virtual {v3, v9}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private updateAudioState()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 696
    const-string v1, "hdmi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " >> HDMILocalService.updateAudioState(), HDMI target state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/mediatek/hdmi/HDMILocalService;->sHMDITargetState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n sIsCablePluged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/mediatek/hdmi/HDMILocalService;->sIsCablePluged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n audioTargetState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/mediatek/hdmi/HDMILocalService;->sHMDIAudioTargetState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n sIsCallStateIdle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/mediatek/hdmi/HDMILocalService;->sIsCallStateIdle:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n sWiredHeadSetPlugState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/hdmi/HDMILocalService;->sWiredHeadSetPlugState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    sget-boolean v1, Lcom/mediatek/hdmi/HDMILocalService;->sHMDITargetState:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/mediatek/hdmi/HDMILocalService;->sIsCablePluged:Z

    if-nez v1, :cond_1

    .line 709
    :cond_0
    :goto_0
    return v0

    .line 705
    :cond_1
    sget-boolean v1, Lcom/mediatek/hdmi/HDMILocalService;->sHMDIAudioTargetState:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/mediatek/hdmi/HDMILocalService;->sIsCallStateIdle:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/mediatek/hdmi/HDMILocalService;->sWiredHeadSetPlugState:I

    if-eq v1, v4, :cond_2

    .line 707
    invoke-direct {p0, v4}, Lcom/mediatek/hdmi/HDMILocalService;->enableAudioImp(Z)Z

    move-result v0

    goto :goto_0

    .line 709
    :cond_2
    invoke-direct {p0, v0}, Lcom/mediatek/hdmi/HDMILocalService;->enableAudioImp(Z)Z

    move-result v0

    goto :goto_0
.end method

.method private updateEDID(Z)V
    .locals 5
    .parameter "isIn"

    .prologue
    .line 485
    if-eqz p1, :cond_4

    .line 486
    invoke-virtual {p0}, Lcom/mediatek/hdmi/HDMILocalService;->getEDID()[I

    move-result-object v2

    sput-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sEdid:[I

    .line 487
    sget-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sEdid:[I

    if-eqz v2, :cond_1

    .line 488
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sEdid:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 489
    const-string v2, "hdmi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sEdid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/hdmi/HDMILocalService;->sEdid:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 491
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.hdmi.localservice.action.EDID_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 497
    .end local v0           #i:I
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    sget-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sEdidPrev:[I

    if-eqz v2, :cond_2

    .line 498
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    sget-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sEdidPrev:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 499
    const-string v2, "hdmi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sEdidPrev["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/hdmi/HDMILocalService;->sEdidPrev:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 494
    .end local v0           #i:I
    :cond_1
    const-string v2, "hdmi"

    const-string v3, "sEdid is still null!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 502
    :cond_2
    const-string v2, "hdmi"

    const-string v3, "sEdidPrev is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_3
    :goto_3
    return-void

    .line 505
    :cond_4
    sget-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sEdid:[I

    sput-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sEdidPrev:[I

    .line 506
    const/4 v2, 0x0

    sput-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sEdid:[I

    goto :goto_3
.end method


# virtual methods
.method public enableAudio(Z)Z
    .locals 3
    .parameter "enabled"

    .prologue
    .line 285
    const-string v0, "hdmi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>HDMILocalService.enableAudio(), new state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    sput-boolean p1, Lcom/mediatek/hdmi/HDMILocalService;->sHMDIAudioTargetState:Z

    .line 287
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMILocalService;->updateAudioState()Z

    move-result v0

    return v0
.end method

.method public enableCEC(Z)Z
    .locals 3
    .parameter "enabled"

    .prologue
    .line 341
    const-string v0, "hdmi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>HDMILocalService.enableCEC, new state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMILocalService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v0, p1}, Lcom/mediatek/common/hdmi/IHDMINative;->enableCEC(Z)Z

    move-result v0

    return v0
.end method

.method public enableHDMI(Z)Z
    .locals 3
    .parameter "enabled"

    .prologue
    .line 267
    const-string v0, "hdmi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " >> HDMILocalService.enableHDMI(), new state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sput-boolean p1, Lcom/mediatek/hdmi/HDMILocalService;->sHMDITargetState:Z

    .line 269
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/HDMILocalService;->enableHDMIImpl(Z)Z

    move-result v0

    return v0
.end method

.method public enableVideo(Z)Z
    .locals 3
    .parameter "enabled"

    .prologue
    .line 330
    const-string v0, "hdmi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>HDMILocalService.enableVideo(), new state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sput-boolean p1, Lcom/mediatek/hdmi/HDMILocalService;->sHMDIVideoTargetState:Z

    .line 332
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/HDMILocalService;->enableVideoImp(Z)Z

    move-result v0

    return v0
.end method

.method public getAudioEnabledStatus()Z
    .locals 3

    .prologue
    .line 362
    const-string v1, "hdmi"

    const-string v2, ">>HDMILocalService.getAudioEnabledStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, state:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/hdmi/HDMILocalService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 365
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/mediatek/hdmi/HDMILocalService;->mAudioManager:Landroid/media/AudioManager;

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/mediatek/hdmi/HDMILocalService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/mediatek/hdmi/HDMILocalService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "GetHDMIAudioStatus"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    const-string v1, "GetHDMIAudioStatus=true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    const-string v1, "hdmi"

    const-string v2, "HDMI audeo is enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v1, 0x1

    .line 375
    :goto_0
    return v1

    .line 374
    :cond_1
    const-string v1, "hdmi"

    const-string v2, "HDMI audio is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCECAddr()[C
    .locals 2

    .prologue
    .line 389
    const-string v0, "hdmi"

    const-string v1, ">>HDMILocalService.getCECAddr"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMILocalService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v0}, Lcom/mediatek/common/hdmi/IHDMINative;->getCECAddr()[C

    move-result-object v0

    return-object v0
.end method

.method public getCECCmd()V
    .locals 4

    .prologue
    .line 394
    const-string v1, "hdmi"

    const-string v2, ">>HDMILocalService.getCECCmd"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v1, p0, Lcom/mediatek/hdmi/HDMILocalService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v1}, Lcom/mediatek/common/hdmi/IHDMINative;->getCECCmd()[I

    move-result-object v1

    sput-object v1, Lcom/mediatek/hdmi/HDMILocalService;->sCECCmd:[I

    .line 397
    sget-object v1, Lcom/mediatek/hdmi/HDMILocalService;->sCECCmd:[I

    if-eqz v1, :cond_2

    .line 398
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    .line 399
    const-string v1, "hdmi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>HDMILocalService CEC command ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/hdmi/HDMILocalService;->sCECCmd:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_0
    sget-object v1, Lcom/mediatek/hdmi/HDMILocalService;->sCECCmd:[I

    const/16 v2, 0x15

    aget v1, v1, v2

    const/16 v2, 0x55

    if-ne v1, v2, :cond_1

    .line 405
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/hdmi/HDMILocalService;->sCECCmd:[I

    .line 406
    invoke-virtual {p0}, Lcom/mediatek/hdmi/HDMILocalService;->getCECCmd()V

    .line 407
    const-string v1, "hdmi"

    const-string v2, ">>HDMILocalService Need to get more CEC Commands!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .end local v0           #i:I
    :cond_1
    :goto_1
    return-void

    .line 410
    :cond_2
    const-string v1, "hdmi"

    const-string v2, ">>HDMILocalService.getCECCmd null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getEDID()[I
    .locals 2

    .prologue
    .line 384
    const-string v0, "hdmi"

    const-string v1, ">>HDMILocalService.getEDID"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMILocalService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v0}, Lcom/mediatek/common/hdmi/IHDMINative;->getEDID()[I

    move-result-object v0

    return-object v0
.end method

.method public isCablePluged()Z
    .locals 3

    .prologue
    .line 582
    const-string v0, "hdmi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " >> HDMILocalService.isCablePluged?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/hdmi/HDMILocalService;->sIsCablePluged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    sget-boolean v0, Lcom/mediatek/hdmi/HDMILocalService;->sIsCablePluged:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 88
    const-string v0, "hdmi"

    const-string v1, ">>HDMILocalService.onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMILocalService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 158
    const-string v2, "hdmi"

    const-string v3, ">>HDMILocalService.onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-class v2, Lcom/mediatek/common/hdmi/IHDMINative;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/hdmi/IHDMINative;

    iput-object v2, p0, Lcom/mediatek/hdmi/HDMILocalService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    .line 160
    iget-object v2, p0, Lcom/mediatek/hdmi/HDMILocalService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    if-nez v2, :cond_0

    .line 161
    const-string v2, "hdmi"

    const-string v3, "Native is not created"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iget-object v2, p0, Lcom/mediatek/hdmi/HDMILocalService;->mReceiver:Lcom/mediatek/hdmi/HDMILocalService$HDMIServiceReceiver;

    if-nez v2, :cond_1

    .line 164
    new-instance v2, Lcom/mediatek/hdmi/HDMILocalService$HDMIServiceReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mediatek/hdmi/HDMILocalService$HDMIServiceReceiver;-><init>(Lcom/mediatek/hdmi/HDMILocalService;Lcom/mediatek/hdmi/HDMILocalService$1;)V

    iput-object v2, p0, Lcom/mediatek/hdmi/HDMILocalService;->mReceiver:Lcom/mediatek/hdmi/HDMILocalService$HDMIServiceReceiver;

    .line 166
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HDMI_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v2, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/mediatek/hdmi/HDMILocalService;->mReceiver:Lcom/mediatek/hdmi/HDMILocalService$HDMIServiceReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    iget-object v2, p0, Lcom/mediatek/hdmi/HDMILocalService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_2

    .line 174
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/mediatek/hdmi/HDMILocalService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 176
    :cond_2
    iget-object v2, p0, Lcom/mediatek/hdmi/HDMILocalService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/mediatek/hdmi/HDMILocalService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 178
    sget-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_3

    .line 179
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 180
    .local v1, mPowerManager:Landroid/os/PowerManager;
    const/4 v2, 0x6

    const-string v3, "HDMILocalService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/mediatek/hdmi/HDMILocalService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 191
    .end local v1           #mPowerManager:Landroid/os/PowerManager;
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMILocalService;->initHDMITargetState()V

    .line 192
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 193
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    sput-boolean v2, Lcom/mediatek/hdmi/HDMILocalService;->sIsRunning:Z

    .line 242
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMILocalService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v0}, Lcom/mediatek/common/hdmi/IHDMINative;->ishdmiForceAwake()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/hdmi/HDMILocalService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/hdmi/HDMILocalService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lcom/mediatek/hdmi/HDMILocalService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMILocalService;->mReceiver:Lcom/mediatek/hdmi/HDMILocalService$HDMIServiceReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 247
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMILocalService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/hdmi/HDMILocalService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 249
    const-string v0, "hdmi"

    const-string v1, ">>HDMILocalService.onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x1

    .line 220
    const-string v1, "hdmi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>HDMILocalService.onStartCommand(), startId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sput-boolean v4, Lcom/mediatek/hdmi/HDMILocalService;->sIsRunning:Z

    .line 223
    if-eqz p1, :cond_0

    .line 224
    const-string v1, "bootup_action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, bootUpTypeAction:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 227
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const-string v1, "hdmi"

    const-string v2, "IPO boot up complete, try to resume HDMI driver status"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-direct {p0, v4}, Lcom/mediatek/hdmi/HDMILocalService;->dealWithIPO(Z)V

    .line 235
    .end local v0           #bootUpTypeAction:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setCECAddr(C[CCC)V
    .locals 2
    .parameter "laNum"
    .parameter "la"
    .parameter "pa"
    .parameter "svc"

    .prologue
    .line 346
    const-string v0, "hdmi"

    const-string v1, ">>HDMILocalService.setCECAddr"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMILocalService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mediatek/common/hdmi/IHDMINative;->setCECAddr(C[CCC)Z

    .line 348
    return-void
.end method

.method public setCECCmd(CCC[CIC)V
    .locals 7
    .parameter "initAddr"
    .parameter "destAddr"
    .parameter "opCode"
    .parameter "operand"
    .parameter "size"
    .parameter "enqueueOk"

    .prologue
    .line 351
    const-string v0, "hdmi"

    const-string v1, ">>HDMILocalService.setCECCmd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMILocalService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/common/hdmi/IHDMINative;->setCECCmd(CCC[CIC)Z

    .line 353
    return-void
.end method

.method public setDeepColor(II)Z
    .locals 3
    .parameter "colorSpace"
    .parameter "deepColor"

    .prologue
    .line 445
    const-string v0, "hdmi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>HDMILocalService.setVideoResolution(), new deepColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " colorspace="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMILocalService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/common/hdmi/IHDMINative;->setDeepColor(II)Z

    move-result v0

    return v0
.end method

.method public setHDCPKey()Z
    .locals 8

    .prologue
    .line 456
    const/4 v4, 0x0

    .line 457
    .local v4, key:[B
    const-string v5, "hdmi"

    const-string v6, ">>HDMILocalService.setHDCPKey()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v5, "NvRAMAgent"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 460
    .local v1, binder:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/mediatek/hdmi/NvRAMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/hdmi/NvRAMAgent;

    move-result-object v0

    .line 462
    .local v0, agent:Lcom/mediatek/hdmi/NvRAMAgent;
    if-eqz v0, :cond_1

    .line 464
    :try_start_0
    const-string v5, "hdmi"

    const-string v6, "Read HDCP key from nvram"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/16 v5, 0x2a

    invoke-interface {v0, v5}, Lcom/mediatek/hdmi/NvRAMAgent;->readFile(I)[B

    move-result-object v4

    .line 467
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v5, 0x11f

    if-ge v3, v5, :cond_0

    .line 468
    const-string v5, "hdmi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HDCP Key["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 470
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 471
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 477
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    if-eqz v4, :cond_2

    .line 478
    iget-object v5, p0, Lcom/mediatek/hdmi/HDMILocalService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v5, v4}, Lcom/mediatek/common/hdmi/IHDMINative;->setHDCPKey([B)Z

    move-result v5

    .line 480
    :goto_2
    return v5

    .line 474
    :cond_1
    const-string v5, "hdmi"

    const-string v6, "NvRAMAgent is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 480
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public setVideoResolution(I)Z
    .locals 3
    .parameter "resolution"

    .prologue
    .line 423
    const-string v0, "hdmi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>HDMILocalService.setVideoResolution(), new resolution="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMILocalService;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v0, p1}, Lcom/mediatek/common/hdmi/IHDMINative;->setVideoConfig(I)Z

    move-result v0

    return v0
.end method
