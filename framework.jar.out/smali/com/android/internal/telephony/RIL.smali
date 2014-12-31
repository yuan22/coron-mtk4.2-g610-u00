.class public final Lcom/android/internal/telephony/RIL;
.super Lcom/android/internal/telephony/BaseCommands;
.source "RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RIL$TimerWithIndex;,
        Lcom/android/internal/telephony/RIL$ReleaseCallwithinSchedule;,
        Lcom/android/internal/telephony/RIL$RILReceiver;,
        Lcom/android/internal/telephony/RIL$RILSender;
    }
.end annotation


# static fields
.field private static final CDMA_BROADCAST_SMS_NO_OF_SERVICE_CATEGORIES:I = 0x1f

.field private static final CDMA_BSI_NO_OF_INTS_STRUCT:I = 0x3

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0x1388

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "RILJ"

.field private static final MSG_GET_DATA_CALL_LIST_DONE:I = 0x0

.field static final RADIO_TEMPSTATE_AVAILABLE:I = 0x0

.field static final RADIO_TEMPSTATE_UNAVAILABLE:I = 0x1

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field static final RILJ_LOGD:Z = true

.field static final RILJ_LOGV:Z = false

#the value of this static final field might be set in the static constructor
.field static final RIL_ENG:Z = false

.field static final RIL_MAX_COMMAND_BYTES:I = 0x2000

.field static SOCKET_NAME_RIL_1:Ljava/lang/String; = null

.field static SOCKET_NAME_RIL_2:Ljava/lang/String; = null

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field private static mInitialRadioStateChange:Z

.field private static mSimInsertedStatus:I


# instance fields
.field private final DTMF_STATUS_START:Z

.field private final DTMF_STATUS_STOP:Z

.field private final MAXIMUM_DTMF_REQUEST:I

.field private dtmfRequestCount:I

.field private dtmfStatus:Z

.field private getAvailableNetworkRequests:I

.field private isScreenOn:Z

.field private mCatServiceInitListener:Landroid/content/BroadcastReceiver;

.field private mDataListChangedHandler:Landroid/os/Handler;

.field mHangUpTimerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/RIL$TimerWithIndex;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs3GSwitch:Z

.field private mIsFirstResponse:Z

.field mLastNITZTimeInfo:Ljava/lang/Object;

.field mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

.field mReceiverThread:Ljava/lang/Thread;

.field mRequestMessagesPending:I

.field mRequestMessagesWaiting:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSender:Lcom/android/internal/telephony/RIL$RILSender;

.field mSenderThread:Landroid/os/HandlerThread;

.field private mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

.field mSocket:Landroid/net/LocalSocket;

.field mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

.field private mStkPciObject:Ljava/lang/Object;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockTimeout:I

.field private mySimId:I

.field private pm:Landroid/os/PowerManager;

.field private radioTemporarilyUnavailable:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 275
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/RIL;->RIL_ENG:Z

    .line 329
    const-string/jumbo v0, "rild"

    sput-object v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_1:Ljava/lang/String;

    .line 330
    const-string/jumbo v0, "rild2"

    sput-object v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_2:Ljava/lang/String;

    .line 350
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/RIL;->mInitialRadioStateChange:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "preferredNetworkType"
    .parameter "cdmaSubscription"

    .prologue
    .line 754
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    .line 755
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 10
    .parameter "context"
    .parameter "preferredNetworkType"
    .parameter "cdmaSubscription"
    .parameter "simId"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 758
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 279
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    .line 309
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    .line 314
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v6, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 343
    iput-boolean v9, p0, Lcom/android/internal/telephony/RIL;->isScreenOn:Z

    .line 357
    iput v8, p0, Lcom/android/internal/telephony/RIL;->radioTemporarilyUnavailable:I

    .line 363
    iput v8, p0, Lcom/android/internal/telephony/RIL;->dtmfRequestCount:I

    .line 364
    const/16 v6, 0x20

    iput v6, p0, Lcom/android/internal/telephony/RIL;->MAXIMUM_DTMF_REQUEST:I

    .line 366
    iput v8, p0, Lcom/android/internal/telephony/RIL;->getAvailableNetworkRequests:I

    .line 371
    iput-boolean v9, p0, Lcom/android/internal/telephony/RIL;->DTMF_STATUS_START:Z

    .line 372
    iput-boolean v8, p0, Lcom/android/internal/telephony/RIL;->DTMF_STATUS_STOP:Z

    .line 373
    iput-boolean v8, p0, Lcom/android/internal/telephony/RIL;->dtmfStatus:Z

    .line 378
    iput-boolean v9, p0, Lcom/android/internal/telephony/RIL;->mIsFirstResponse:Z

    .line 380
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mStkPciObject:Ljava/lang/Object;

    .line 382
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->pm:Landroid/os/PowerManager;

    .line 384
    new-instance v6, Lcom/android/internal/telephony/RIL$1;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/RIL$1;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v6, p0, Lcom/android/internal/telephony/RIL;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 6319
    new-instance v6, Lcom/android/internal/telephony/RIL$2;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/RIL$2;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v6, p0, Lcom/android/internal/telephony/RIL;->mDataListChangedHandler:Landroid/os/Handler;

    .line 6579
    new-instance v6, Lcom/android/internal/telephony/RIL$3;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/RIL$3;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v6, p0, Lcom/android/internal/telephony/RIL;->mCatServiceInitListener:Landroid/content/BroadcastReceiver;

    .line 759
    iput p4, p0, Lcom/android/internal/telephony/RIL;->mySimId:I

    .line 761
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RIL(context, preferredNetworkType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cdmaSubscription="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 764
    iput p3, p0, Lcom/android/internal/telephony/RIL;->mCdmaSubscription:I

    .line 765
    iput p2, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    .line 766
    iput v8, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    .line 768
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v5

    .line 769
    .local v5, telephonyMode:I
    if-nez v5, :cond_0

    .line 809
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SOCKET_NAME_RIL_1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 810
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SOCKET_NAME_RIL_2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_2:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 813
    const-string/jumbo v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, p0, Lcom/android/internal/telephony/RIL;->pm:Landroid/os/PowerManager;

    .line 814
    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->pm:Landroid/os/PowerManager;

    const-string v7, "RILJ"

    invoke-virtual {v6, v9, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 815
    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 816
    const-string/jumbo v6, "ro.ril.wake_lock_timeout"

    const/16 v7, 0x1388

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    .line 818
    iput v8, p0, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    .line 819
    iput v8, p0, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    .line 823
    iput v8, p0, Lcom/android/internal/telephony/RIL;->dtmfRequestCount:I

    .line 825
    if-nez p4, :cond_2

    .line 826
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "RILSender1"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    .line 830
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 832
    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 833
    .local v4, looper:Landroid/os/Looper;
    new-instance v6, Lcom/android/internal/telephony/RIL$RILSender;

    invoke-direct {v6, p0, v4}, Lcom/android/internal/telephony/RIL$RILSender;-><init>(Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    .line 835
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 837
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 838
    const-string v6, "Not starting RILReceiver: wifi-only"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 856
    :goto_2
    :try_start_0
    const-class v6, Lcom/mediatek/common/telephony/IServiceStateExt;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/common/telephony/IServiceStateExt;

    iput-object v6, p0, Lcom/android/internal/telephony/RIL;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    :goto_3
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 862
    .local v3, filterForStkCachedCommand:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.ACTION_CAT_INIT_DONE"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 863
    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mCatServiceInitListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 864
    const-string v6, "RILJ"

    const-string v7, "[CachedStk register receiver to listen CAT init"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return-void

    .line 777
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #filterForStkCachedCommand:Landroid/content/IntentFilter;
    .end local v4           #looper:Landroid/os/Looper;
    :cond_0
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_0

    .line 780
    :pswitch_0
    const-string/jumbo v6, "rild"

    sput-object v6, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_1:Ljava/lang/String;

    .line 781
    const-string/jumbo v6, "rild2"

    sput-object v6, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_2:Ljava/lang/String;

    goto/16 :goto_0

    .line 785
    :pswitch_1
    const-string/jumbo v6, "rild-md2"

    sput-object v6, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_1:Ljava/lang/String;

    .line 786
    const-string/jumbo v6, "rild2-md2"

    sput-object v6, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_2:Ljava/lang/String;

    goto/16 :goto_0

    .line 789
    :pswitch_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstMD()I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 790
    const-string/jumbo v6, "rild"

    sput-object v6, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_1:Ljava/lang/String;

    .line 791
    const-string/jumbo v6, "rild-md2"

    sput-object v6, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_2:Ljava/lang/String;

    goto/16 :goto_0

    .line 793
    :cond_1
    const-string/jumbo v6, "rild-md2"

    sput-object v6, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_1:Ljava/lang/String;

    .line 794
    const-string/jumbo v6, "rild"

    sput-object v6, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_2:Ljava/lang/String;

    goto/16 :goto_0

    .line 799
    :pswitch_3
    const-string/jumbo v6, "rild"

    sput-object v6, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_1:Ljava/lang/String;

    .line 800
    const-string/jumbo v6, "rild-md2"

    sput-object v6, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_2:Ljava/lang/String;

    goto/16 :goto_0

    .line 803
    :pswitch_4
    const-string/jumbo v6, "rild-md2"

    sput-object v6, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_1:Ljava/lang/String;

    .line 804
    const-string/jumbo v6, "rild"

    sput-object v6, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_2:Ljava/lang/String;

    goto/16 :goto_0

    .line 828
    :cond_2
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "RILSender2"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    goto/16 :goto_1

    .line 840
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v4       #looper:Landroid/os/Looper;
    :cond_3
    const-string v6, "Starting RILReceiver"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 841
    new-instance v6, Lcom/android/internal/telephony/RIL$RILReceiver;

    invoke-direct {v6, p0, p4}, Lcom/android/internal/telephony/RIL$RILReceiver;-><init>(Lcom/android/internal/telephony/RIL;I)V

    iput-object v6, p0, Lcom/android/internal/telephony/RIL;->mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

    .line 842
    if-nez p4, :cond_4

    .line 843
    new-instance v6, Ljava/lang/Thread;

    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

    const-string v8, "RILReceiver1"

    invoke-direct {v6, v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/telephony/RIL;->mReceiverThread:Ljava/lang/Thread;

    .line 847
    :goto_4
    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 849
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 850
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 851
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 852
    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 845
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_4
    new-instance v6, Ljava/lang/Thread;

    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

    const-string v8, "RILReceiver2"

    invoke-direct {v6, v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/telephony/RIL;->mReceiverThread:Ljava/lang/Thread;

    goto :goto_4

    .line 857
    :catch_0
    move-exception v1

    .line 858
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 777
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/RIL;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->sendScreenState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/RIL;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 270
    iget v0, p0, Lcom/android/internal/telephony/RIL;->radioTemporarilyUnavailable:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/RIL;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mStkPciObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/RIL;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/internal/telephony/RIL;->mStkPciObject:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/RIL;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->releaseWakeLockIfDone()V

    return-void
.end method

.method static synthetic access$400(Ljava/io/InputStream;[B)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {p0, p1}, Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/RIL;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    iput p1, p0, Lcom/android/internal/telephony/RIL;->getAvailableNetworkRequests:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/RIL;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/RIL;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 270
    iget v0, p0, Lcom/android/internal/telephony/RIL;->mySimId:I

    return v0
.end method

.method private acquireWakeLock()V
    .locals 5

    .prologue
    .line 2604
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2605
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2606
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    .line 2608
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RIL$RILSender;->removeMessages(I)V

    .line 2609
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2610
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/internal/telephony/RIL$RILSender;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2611
    monitor-exit v2

    .line 2612
    return-void

    .line 2611
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearRequestsList(IZ)V
    .locals 7
    .parameter "error"
    .parameter "loggable"

    .prologue
    .line 2685
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2686
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2687
    .local v0, count:I
    if-eqz p2, :cond_0

    .line 2688
    const-string v3, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[clearRequestsList]WAKE_LOCK_TIMEOUT  mReqPending="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mRequestList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2694
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RILRequest;

    .line 2695
    .local v2, rr:Lcom/android/internal/telephony/RILRequest;
    if-eqz p2, :cond_1

    .line 2696
    const-string v3, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 2700
    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 2693
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2702
    .end local v2           #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2703
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    .line 2704
    monitor-exit v4

    .line 2705
    return-void

    .line 2704
    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private disableVTCapability()V
    .locals 3

    .prologue
    .line 6305
    const/16 v1, 0x801

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6307
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6309
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6310
    return-void
.end method

.method private findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    .locals 5
    .parameter "serial"

    .prologue
    .line 2708
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2709
    const/4 v0, 0x0

    .local v0, i:I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, s:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 2710
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    .line 2712
    .local v1, rr:Lcom/android/internal/telephony/RILRequest;
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    if-ne v3, p1, :cond_1

    .line 2713
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2714
    iget v3, p0, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    if-lez v3, :cond_0

    .line 2715
    iget v3, p0, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    .line 2716
    :cond_0
    monitor-exit v4

    .line 2721
    .end local v1           #rr:Lcom/android/internal/telephony/RILRequest;
    :goto_1
    return-object v1

    .line 2709
    .restart local v1       #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2719
    .end local v1           #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_2
    monitor-exit v4

    .line 2721
    const/4 v1, 0x0

    goto :goto_1

    .line 2719
    .end local v2           #s:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getDataCallState(Landroid/os/Parcel;I)Lcom/android/internal/telephony/DataCallState;
    .locals 6
    .parameter "p"
    .parameter "version"

    .prologue
    .line 4144
    new-instance v1, Lcom/android/internal/telephony/DataCallState;

    invoke-direct {v1}, Lcom/android/internal/telephony/DataCallState;-><init>()V

    .line 4146
    .local v1, dataCall:Lcom/android/internal/telephony/DataCallState;
    iput p2, v1, Lcom/android/internal/telephony/DataCallState;->version:I

    .line 4147
    const/4 v4, 0x5

    if-ge p2, v4, :cond_1

    .line 4148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 4149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 4150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->type:Ljava/lang/String;

    .line 4151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4152
    .local v0, addresses:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4153
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .line 4179
    :cond_0
    :goto_0
    return-object v1

    .line 4156
    .end local v0           #addresses:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    .line 4157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/DataCallState;->suggestedRetryTime:I

    .line 4158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 4159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 4160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->type:Ljava/lang/String;

    .line 4161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 4162
    iget v4, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4164
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "getDataCallState, no ifname"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4166
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4167
    .restart local v0       #addresses:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 4168
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .line 4170
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4171
    .local v2, dnses:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4172
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    .line 4174
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4175
    .local v3, gateways:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4176
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    goto :goto_0
.end method

.method private getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 4
    .parameter "stateInt"

    .prologue
    .line 2535
    packed-switch p1, :pswitch_data_0

    .line 2548
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_RadioState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2536
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 2551
    .local v0, state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :goto_0
    return-object v0

    .line 2537
    .end local v0           #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2538
    .end local v0           #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2539
    .end local v0           #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2540
    .end local v0           #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2541
    .end local v0           #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2542
    .end local v0           #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2543
    .end local v0           #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2544
    .end local v0           #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2545
    .end local v0           #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2535
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method static hexCharToInt(C)I
    .locals 3
    .parameter "c"

    .prologue
    .line 5834
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 5836
    :goto_0
    return v0

    .line 5835
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 5836
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 5838
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 5820
    if-nez p0, :cond_1

    const/4 v2, 0x0

    .line 5830
    :cond_0
    return-object v2

    .line 5822
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5823
    .local v1, len:I
    div-int/lit8 v3, v1, 0x2

    new-array v2, v3, [B

    .line 5825
    .local v2, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5826
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 5825
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private lookupVirtualOperatorNameByEfPnn(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "numeric"
    .parameter "desireLongName"

    .prologue
    .line 6055
    invoke-static {}, Lcom/android/internal/telephony/gsm/SpnOverride;->getInstance()Lcom/android/internal/telephony/gsm/SpnOverride;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    .line 6056
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getFirstFullNameInEfPnn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpnByEfPnn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private lookupVirtualOperatorNameByEfSpn(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "numeric"
    .parameter "desireLongName"

    .prologue
    .line 6043
    invoke-static {}, Lcom/android/internal/telephony/gsm/SpnOverride;->getInstance()Lcom/android/internal/telephony/gsm/SpnOverride;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    .line 6044
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSpNameInEfSpn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpnByEfSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private lookupVirtualOperatorNameByImsi(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "numeric"
    .parameter "desireLongName"

    .prologue
    .line 6049
    invoke-static {}, Lcom/android/internal/telephony/gsm/SpnOverride;->getInstance()Lcom/android/internal/telephony/gsm/SpnOverride;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    .line 6050
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpnByImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V
    .locals 5
    .parameter "infoRec"

    .prologue
    const/4 v4, 0x0

    .line 4501
    const/16 v0, 0x403

    .line 4502
    .local v0, response:I
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    if-eqz v1, :cond_1

    .line 4503
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4504
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4505
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 4545
    :cond_0
    :goto_0
    return-void

    .line 4508
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    if-eqz v1, :cond_2

    .line 4509
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4510
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4511
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 4514
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    if-eqz v1, :cond_3

    .line 4515
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4516
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4517
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 4520
    :cond_3
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;

    if-eqz v1, :cond_4

    .line 4521
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4522
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4523
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 4526
    :cond_4
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    if-eqz v1, :cond_5

    .line 4527
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4528
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4529
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 4532
    :cond_5
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    if-eqz v1, :cond_6

    .line 4533
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4534
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4535
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4538
    :cond_6
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;

    if-eqz v1, :cond_0

    .line 4539
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4540
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4541
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0
.end method

.method private notifyRegistrantsRilConnectionChanged(I)V
    .locals 4
    .parameter "rilVer"

    .prologue
    const/4 v3, 0x0

    .line 3854
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mRilVersion:I

    .line 3855
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 3856
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 3859
    :cond_0
    return-void
.end method

.method private processResponse(Landroid/os/Parcel;)V
    .locals 4
    .parameter "p"

    .prologue
    const/4 v3, 0x1

    .line 2657
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2660
    .local v0, type:I
    iget-boolean v1, p0, Lcom/android/internal/telephony/RIL;->mIsFirstResponse:Z

    if-eqz v1, :cond_1

    if-eq v0, v3, :cond_0

    if-nez v0, :cond_1

    .line 2663
    :cond_0
    const-string v1, "RILJ"

    const-string v2, "FeatureOption.MTK_VT3G324M_SUPPORT == false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->disableVTCapability()V

    .line 2666
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/RIL;->mIsFirstResponse:Z

    .line 2669
    :cond_1
    if-ne v0, v3, :cond_3

    .line 2670
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 2675
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->releaseWakeLockIfDone()V

    .line 2676
    return-void

    .line 2671
    :cond_3
    if-nez v0, :cond_2

    .line 2672
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->processSolicited(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private processSolicited(Landroid/os/Parcel;)V
    .locals 10
    .parameter "p"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 2728
    const/4 v1, 0x0

    .line 2730
    .local v1, found:Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2731
    .local v4, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2735
    .local v0, error:I
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 2737
    .local v3, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_0

    .line 2738
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected solicited response! sn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    :goto_0
    return-void

    .line 2745
    :cond_0
    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v8, 0x31

    if-eq v7, v8, :cond_1

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v8, 0x32

    if-ne v7, v8, :cond_3

    .line 2747
    :cond_1
    iget v7, p0, Lcom/android/internal/telephony/RIL;->dtmfRequestCount:I

    if-lez v7, :cond_2

    iget v6, p0, Lcom/android/internal/telephony/RIL;->dtmfRequestCount:I

    add-int/lit8 v6, v6, -0x1

    :cond_2
    iput v6, p0, Lcom/android/internal/telephony/RIL;->dtmfRequestCount:I

    .line 2751
    :cond_3
    const/4 v2, 0x0

    .line 2753
    .local v2, ret:Ljava/lang/Object;
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v7, 0x30

    if-ne v6, v7, :cond_4

    .line 2754
    iget v6, p0, Lcom/android/internal/telephony/RIL;->getAvailableNetworkRequests:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/RIL;->getAvailableNetworkRequests:I

    .line 2755
    iget v6, p0, Lcom/android/internal/telephony/RIL;->getAvailableNetworkRequests:I

    if-nez v6, :cond_4

    .line 2756
    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mGetAvailableNetworkDoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2760
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    if-lez v6, :cond_7

    .line 2762
    :cond_5
    :try_start_0
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v6, :sswitch_data_0

    .line 2985
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized solicited response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2987
    :catch_0
    move-exception v5

    .line 2990
    .local v5, tr:Ljava/lang/Throwable;
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, possible invalid RIL response"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2994
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_6

    .line 2995
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v9, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2996
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 2998
    :cond_6
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 2769
    .end local v5           #tr:Ljava/lang/Throwable;
    :sswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 3003
    .end local v2           #ret:Ljava/lang/Object;
    :cond_7
    :goto_1
    if-eqz v0, :cond_9

    .line 3004
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 3005
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 2770
    .restart local v2       #ret:Ljava/lang/Object;
    :sswitch_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2771
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2772
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2773
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2774
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2775
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2776
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2777
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2778
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2779
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2780
    :sswitch_b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2781
    :sswitch_c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2782
    :sswitch_d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2784
    :sswitch_e
    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2785
    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v6, :cond_8

    .line 2786
    const-string/jumbo v6, "testing emergency call, notify ECM Registrants"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2787
    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v6}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 2790
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 2791
    goto :goto_1

    .line 2793
    :sswitch_f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2794
    :sswitch_10
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2795
    :sswitch_11
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2796
    :sswitch_12
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2797
    :sswitch_13
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2798
    :sswitch_14
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2799
    :sswitch_15
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2800
    :sswitch_16
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseOperator(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2801
    :sswitch_17
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2802
    :sswitch_18
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2803
    :sswitch_19
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2804
    :sswitch_1a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2805
    :sswitch_1b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2806
    :sswitch_1c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2808
    :sswitch_1d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2809
    :sswitch_1e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2810
    :sswitch_1f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2811
    :sswitch_20
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2812
    :sswitch_21
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2814
    :sswitch_22
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2815
    :sswitch_23
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2816
    :sswitch_24
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2817
    :sswitch_25
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2818
    :sswitch_26
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2819
    :sswitch_27
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2820
    :sswitch_28
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2821
    :sswitch_29
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2822
    :sswitch_2a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2823
    :sswitch_2b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2824
    :sswitch_2c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2825
    :sswitch_2d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2826
    :sswitch_2e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2827
    :sswitch_2f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2828
    :sswitch_30
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2829
    :sswitch_31
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2830
    :sswitch_32
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2831
    :sswitch_33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2832
    :sswitch_34
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2833
    :sswitch_35
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2834
    :sswitch_36
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2835
    :sswitch_37
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2836
    :sswitch_38
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2837
    :sswitch_39
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2838
    :sswitch_3a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2839
    :sswitch_3b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2840
    :sswitch_3c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2841
    :sswitch_3d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2842
    :sswitch_3e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2843
    :sswitch_3f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2844
    :sswitch_40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2845
    :sswitch_41
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2846
    :sswitch_42
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2847
    :sswitch_43
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2848
    :sswitch_44
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2849
    :sswitch_45
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2850
    :sswitch_46
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2851
    :sswitch_47
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2852
    :sswitch_48
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2853
    :sswitch_49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2854
    :sswitch_4a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2855
    :sswitch_4b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2856
    :sswitch_4c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2857
    :sswitch_4d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2858
    :sswitch_4e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2859
    :sswitch_4f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2860
    :sswitch_50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2861
    :sswitch_51
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2862
    :sswitch_52
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2863
    :sswitch_53
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2864
    :sswitch_54
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2865
    :sswitch_55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2866
    :sswitch_56
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2867
    :sswitch_57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2868
    :sswitch_58
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2869
    :sswitch_59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2870
    :sswitch_5a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2871
    :sswitch_5b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2872
    :sswitch_5c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2873
    :sswitch_5d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2874
    :sswitch_5e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2875
    :sswitch_5f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2876
    :sswitch_60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2877
    :sswitch_61
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2878
    :sswitch_62
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2879
    :sswitch_63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2880
    :sswitch_64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2881
    :sswitch_65
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2882
    :sswitch_66
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2883
    :sswitch_67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2884
    :sswitch_68
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2885
    :sswitch_69
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2886
    :sswitch_6a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2887
    :sswitch_6b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2888
    :sswitch_6c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2890
    :sswitch_6d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseGetNitzTime(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2891
    :sswitch_6e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2892
    :sswitch_6f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2893
    :sswitch_70
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2896
    :sswitch_71
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2898
    :sswitch_72
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2899
    :sswitch_73
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2901
    :sswitch_74
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2902
    :sswitch_75
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2903
    :sswitch_76
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2904
    :sswitch_77
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2905
    :sswitch_78
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2906
    :sswitch_79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2907
    :sswitch_7a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2908
    :sswitch_7b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2909
    :sswitch_7c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2910
    :sswitch_7d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2911
    :sswitch_7e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2912
    :sswitch_7f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2913
    :sswitch_80
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2914
    :sswitch_81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2915
    :sswitch_82
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2916
    :sswitch_83
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2917
    :sswitch_84
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2918
    :sswitch_85
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2919
    :sswitch_86
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2920
    :sswitch_87
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2921
    :sswitch_88
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responsePhbEntries(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2922
    :sswitch_89
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2923
    :sswitch_8a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2924
    :sswitch_8b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2925
    :sswitch_8c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2926
    :sswitch_8d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2927
    :sswitch_8e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2928
    :sswitch_8f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2929
    :sswitch_90
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2930
    :sswitch_91
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2931
    :sswitch_92
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2932
    :sswitch_93
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2933
    :sswitch_94
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2934
    :sswitch_95
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSimSmsMemoryStatus(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2935
    :sswitch_96
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2936
    :sswitch_97
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2937
    :sswitch_98
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2938
    :sswitch_99
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2939
    :sswitch_9a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2940
    :sswitch_9b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2941
    :sswitch_9c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseNetworkInfoWithActs(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2942
    :sswitch_9d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2943
    :sswitch_9e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2944
    :sswitch_9f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2945
    :sswitch_a0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2946
    :sswitch_a1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2947
    :sswitch_a2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2948
    :sswitch_a3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2949
    :sswitch_a4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2950
    :sswitch_a5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2951
    :sswitch_a6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2954
    :sswitch_a7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2957
    :sswitch_a8
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2958
    :sswitch_a9
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2962
    :sswitch_aa
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2964
    :sswitch_ab
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2965
    :sswitch_ac
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseGetPhbMemStorage(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2966
    :sswitch_ad
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2967
    :sswitch_ae
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseReadPhbEntryExt(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2968
    :sswitch_af
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2969
    :sswitch_b0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2972
    :sswitch_b1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSmsParams(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2973
    :sswitch_b2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2976
    :sswitch_b3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2977
    :sswitch_b4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2978
    :sswitch_b5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCbConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2979
    :sswitch_b6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2982
    :sswitch_b7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto/16 :goto_1

    .line 3009
    .end local v2           #ret:Ljava/lang/Object;
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "< "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v7, v2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3012
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_a

    .line 3013
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v2, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3014
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 3017
    :cond_a
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 2762
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_22
        0x1e -> :sswitch_23
        0x1f -> :sswitch_24
        0x20 -> :sswitch_25
        0x21 -> :sswitch_26
        0x22 -> :sswitch_27
        0x23 -> :sswitch_28
        0x24 -> :sswitch_29
        0x25 -> :sswitch_2a
        0x26 -> :sswitch_2b
        0x27 -> :sswitch_2c
        0x28 -> :sswitch_2d
        0x29 -> :sswitch_2e
        0x2a -> :sswitch_2f
        0x2b -> :sswitch_30
        0x2c -> :sswitch_31
        0x2d -> :sswitch_32
        0x2e -> :sswitch_33
        0x2f -> :sswitch_34
        0x30 -> :sswitch_35
        0x31 -> :sswitch_36
        0x32 -> :sswitch_37
        0x33 -> :sswitch_38
        0x34 -> :sswitch_39
        0x35 -> :sswitch_3a
        0x36 -> :sswitch_3b
        0x37 -> :sswitch_3c
        0x38 -> :sswitch_3d
        0x39 -> :sswitch_3e
        0x3a -> :sswitch_3f
        0x3b -> :sswitch_40
        0x3c -> :sswitch_41
        0x3d -> :sswitch_42
        0x3e -> :sswitch_43
        0x3f -> :sswitch_44
        0x40 -> :sswitch_45
        0x41 -> :sswitch_46
        0x42 -> :sswitch_47
        0x43 -> :sswitch_48
        0x44 -> :sswitch_49
        0x45 -> :sswitch_4a
        0x46 -> :sswitch_4b
        0x47 -> :sswitch_4c
        0x48 -> :sswitch_4d
        0x49 -> :sswitch_4e
        0x4a -> :sswitch_4f
        0x4b -> :sswitch_50
        0x4c -> :sswitch_51
        0x4d -> :sswitch_52
        0x4e -> :sswitch_53
        0x4f -> :sswitch_54
        0x50 -> :sswitch_55
        0x51 -> :sswitch_56
        0x52 -> :sswitch_57
        0x53 -> :sswitch_58
        0x54 -> :sswitch_59
        0x55 -> :sswitch_5a
        0x56 -> :sswitch_63
        0x57 -> :sswitch_5b
        0x58 -> :sswitch_5c
        0x59 -> :sswitch_5d
        0x5a -> :sswitch_5e
        0x5b -> :sswitch_5f
        0x5c -> :sswitch_60
        0x5d -> :sswitch_61
        0x5e -> :sswitch_62
        0x5f -> :sswitch_64
        0x60 -> :sswitch_65
        0x61 -> :sswitch_66
        0x62 -> :sswitch_67
        0x63 -> :sswitch_6a
        0x64 -> :sswitch_68
        0x65 -> :sswitch_69
        0x66 -> :sswitch_6b
        0x67 -> :sswitch_6c
        0x68 -> :sswitch_6e
        0x69 -> :sswitch_6f
        0x6a -> :sswitch_a8
        0x6b -> :sswitch_a9
        0x6c -> :sswitch_70
        0x92 -> :sswitch_6d
        0x1f4 -> :sswitch_b0
        0x7d0 -> :sswitch_74
        0x7d1 -> :sswitch_83
        0x7d2 -> :sswitch_84
        0x7d3 -> :sswitch_85
        0x7d4 -> :sswitch_76
        0x7d5 -> :sswitch_77
        0x7d6 -> :sswitch_78
        0x7d7 -> :sswitch_79
        0x7d8 -> :sswitch_7a
        0x7d9 -> :sswitch_7b
        0x7da -> :sswitch_7c
        0x7db -> :sswitch_7d
        0x7dc -> :sswitch_7f
        0x7dd -> :sswitch_86
        0x7de -> :sswitch_87
        0x7df -> :sswitch_88
        0x7e0 -> :sswitch_80
        0x7e1 -> :sswitch_81
        0x7e2 -> :sswitch_89
        0x7e3 -> :sswitch_8a
        0x7e4 -> :sswitch_8b
        0x7e5 -> :sswitch_8c
        0x7e6 -> :sswitch_72
        0x7e7 -> :sswitch_8e
        0x7e8 -> :sswitch_8f
        0x7e9 -> :sswitch_90
        0x7ea -> :sswitch_91
        0x7eb -> :sswitch_71
        0x7ec -> :sswitch_82
        0x7ed -> :sswitch_92
        0x7ee -> :sswitch_93
        0x7ef -> :sswitch_94
        0x7f0 -> :sswitch_73
        0x7f1 -> :sswitch_7e
        0x7f2 -> :sswitch_95
        0x7f3 -> :sswitch_96
        0x7f4 -> :sswitch_97
        0x7f5 -> :sswitch_98
        0x7f6 -> :sswitch_99
        0x7f7 -> :sswitch_9a
        0x7f8 -> :sswitch_9b
        0x7f9 -> :sswitch_9c
        0x7fa -> :sswitch_9d
        0x7fb -> :sswitch_9e
        0x7fc -> :sswitch_a1
        0x7fd -> :sswitch_a2
        0x7fe -> :sswitch_a3
        0x7ff -> :sswitch_9f
        0x800 -> :sswitch_a0
        0x801 -> :sswitch_a4
        0x802 -> :sswitch_75
        0x803 -> :sswitch_a5
        0x804 -> :sswitch_a6
        0x805 -> :sswitch_a7
        0x806 -> :sswitch_1
        0x807 -> :sswitch_aa
        0x808 -> :sswitch_ab
        0x809 -> :sswitch_ac
        0x80a -> :sswitch_ad
        0x80b -> :sswitch_ae
        0x80c -> :sswitch_af
        0x80d -> :sswitch_b1
        0x80e -> :sswitch_b2
        0x80f -> :sswitch_1d
        0x810 -> :sswitch_1e
        0x811 -> :sswitch_1f
        0x812 -> :sswitch_20
        0x813 -> :sswitch_21
        0x814 -> :sswitch_b3
        0x815 -> :sswitch_b4
        0x816 -> :sswitch_b5
        0x817 -> :sswitch_b6
        0x818 -> :sswitch_b7
        0x819 -> :sswitch_8d
    .end sparse-switch
.end method

.method private processUnsolicited(Landroid/os/Parcel;)V
    .locals 42
    .parameter "p"

    .prologue
    .line 3089
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 3091
    .local v29, response:I
    sparse-switch v29, :sswitch_data_0

    .line 3169
    :try_start_0
    new-instance v37, Ljava/lang/RuntimeException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Unrecognized unsol response: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v37
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3171
    :catch_0
    move-exception v35

    .line 3172
    .local v35, tr:Ljava/lang/Throwable;
    const-string v37, "RILJ"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Exception processing unsol response: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "Exception:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3846
    .end local v35           #tr:Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3098
    :sswitch_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v31

    .line 3177
    :goto_1
    sparse-switch v29, :sswitch_data_1

    goto :goto_0

    .line 3180
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v37

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v22

    .line 3181
    .local v22, newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 3183
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->switchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_0

    .line 3099
    .end local v22           #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_2
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .local v31, ret:Ljava/lang/Object;
    goto :goto_1

    .line 3100
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 3101
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 3102
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 3103
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 3104
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 3105
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_8
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 3106
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_9
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 3107
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 3108
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 3109
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 3110
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 3111
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 3112
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 3113
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_10
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 3114
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_11
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSimRefresh(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 3115
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_12
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 3116
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_13
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 3117
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_14
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3118
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_15
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCdmaSms(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3119
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_16
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3120
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_17
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3121
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_18
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3122
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_19
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3123
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_1a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3124
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_1b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCdmaInformationRecord(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v31

    .local v31, ret:Ljava/util/ArrayList;
    goto/16 :goto_1

    .line 3125
    .end local v31           #ret:Ljava/util/ArrayList;
    :sswitch_1c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .local v31, ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3126
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_1d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3127
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_1e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3128
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_1f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3129
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_20
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3130
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_21
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3131
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_22
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3132
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_23
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3135
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_24
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3136
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_25
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3137
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_26
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3138
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_27
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCrssNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3139
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_28
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3140
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_29
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3141
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_2a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3142
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_2b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3143
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_2c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3144
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_2d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3145
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_2e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3146
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_2f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3147
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_30
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3148
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_31
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3149
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_32
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3151
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_33
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3152
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_34
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3154
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_35
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3155
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_36
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3156
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_37
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3158
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_38
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3160
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_39
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3161
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_3a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3162
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_3b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3163
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_3c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3164
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_3d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3165
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_3e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3166
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_3f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3167
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_40
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseEtwsNotification(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v31

    .restart local v31       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 3186
    .end local v31           #ret:Ljava/lang/Object;
    :sswitch_41
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    invoke-direct/range {v38 .. v41}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3193
    :sswitch_42
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3198
    :sswitch_43
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3201
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v5, v0, [Ljava/lang/String;

    .line 3203
    .local v5, a:[Ljava/lang/String;
    const/16 v37, 0x1

    check-cast v31, Ljava/lang/String;

    aput-object v31, v5, v37

    .line 3207
    invoke-static {v5}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v33

    .line 3208
    .local v33, sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v33

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3215
    .end local v5           #a:[Ljava/lang/String;
    .end local v33           #sms:Landroid/telephony/SmsMessage;
    :sswitch_44
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3223
    :sswitch_45
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3225
    check-cast v31, [I

    move-object/from16 v34, v31

    check-cast v34, [I

    .line 3227
    .local v34, smsIndex:[I
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1

    .line 3228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v34

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3233
    :cond_1
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, " NEW_SMS_ON_SIM ERROR with wrong length "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v34           #smsIndex:[I
    :sswitch_46
    move-object/from16 v37, v31

    .line 3238
    check-cast v37, [Ljava/lang/String;

    move-object/from16 v28, v37

    check-cast v28, [Ljava/lang/String;

    .line 3240
    .local v28, resp:[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v37, v0

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_2

    .line 3241
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 3242
    const/16 v37, 0x0

    check-cast v31, [Ljava/lang/String;

    check-cast v31, [Ljava/lang/String;

    const/16 v38, 0x0

    aget-object v38, v31, v38

    aput-object v38, v28, v37

    .line 3243
    const/16 v37, 0x1

    const/16 v38, 0x0

    aput-object v38, v28, v37

    .line 3245
    :cond_2
    const/16 v37, 0x0

    aget-object v37, v28, v37

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 3246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v28

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3252
    .end local v28           #resp:[Ljava/lang/String;
    :sswitch_47
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3256
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 3258
    .local v23, nitzReceiveTime:J
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    .line 3260
    .local v30, result:[Ljava/lang/Object;
    const/16 v37, 0x0

    aput-object v31, v30, v37

    .line 3261
    const/16 v37, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    aput-object v38, v30, v37

    .line 3263
    const-string/jumbo v37, "telephony.test.ignore.nitz"

    const/16 v38, 0x0

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 3266
    .local v18, ignoreNitz:Z
    if-eqz v18, :cond_3

    .line 3267
    const-string v37, "ignoring UNSOL_NITZ_TIME_RECEIVED"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3269
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_4

    .line 3271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v30

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3275
    :cond_4
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3285
    .end local v18           #ignoreNitz:Z
    .end local v23           #nitzReceiveTime:J
    .end local v30           #result:[Ljava/lang/Object;
    :sswitch_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3291
    :sswitch_49
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3297
    :sswitch_4a
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3306
    :sswitch_4b
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3315
    :sswitch_4c
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v37

    if-eqz v37, :cond_5

    .line 3318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 3321
    :try_start_3
    const-string v37, "RILJ"

    const-string v38, "[CachedStk unregister mCatServiceInitListener"

    invoke-static/range {v37 .. v38}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatServiceInitListener:Landroid/content/BroadcastReceiver;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 3323
    :catch_1
    move-exception v10

    .line 3324
    .local v10, e:Ljava/lang/IllegalArgumentException;
    const-string v37, "RILJ"

    const-string v38, "[CachedStk mCatServiceInitListener has been unregistered"

    invoke-static/range {v37 .. v38}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3325
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v11

    .line 3326
    .local v11, e2:Ljava/lang/Exception;
    const-string v37, "RILJ"

    const-string v38, "[CachedStk uncaught exception"

    invoke-static/range {v37 .. v38}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3329
    .end local v11           #e2:Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v37

    if-nez v37, :cond_6

    .line 3331
    const-string v37, "RILJ"

    const-string v38, "[CachedStk register mCatServiceInitListener again"

    invoke-static/range {v37 .. v38}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 3333
    .local v15, filterForStkCachedCommand:Landroid/content/IntentFilter;
    const-string v37, "android.intent.action.ACTION_CAT_INIT_DONE"

    move-object/from16 v0, v37

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatServiceInitListener:Landroid/content/BroadcastReceiver;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3336
    .end local v15           #filterForStkCachedCommand:Landroid/content/IntentFilter;
    :cond_6
    const-string v37, "RILJ"

    const-string v38, "[CachedStk cache proactive command"

    invoke-static/range {v37 .. v38}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/RIL;->mStkPciObject:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3342
    :sswitch_4d
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3351
    :sswitch_4e
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3360
    :sswitch_4f
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 3368
    :sswitch_50
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_7

    .line 3371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 3377
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3386
    :sswitch_51
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3395
    :sswitch_52
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3403
    :sswitch_53
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 3411
    :sswitch_54
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    move-object/from16 v33, v31

    .line 3413
    check-cast v33, Landroid/telephony/SmsMessage;

    .line 3415
    .restart local v33       #sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v33

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3422
    .end local v33           #sms:Landroid/telephony/SmsMessage;
    :sswitch_55
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3431
    :sswitch_56
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 3439
    :sswitch_57
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 3447
    :sswitch_58
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3456
    :sswitch_59
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3468
    :sswitch_5a
    :try_start_4
    move-object/from16 v0, v31

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v20, v0
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_3

    .line 3474
    .local v20, listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    .line 3475
    .local v27, rec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3476
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    goto :goto_2

    .line 3469
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v20           #listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    .end local v27           #rec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :catch_3
    move-exception v10

    .line 3470
    .local v10, e:Ljava/lang/ClassCastException;
    const-string v37, "RILJ"

    const-string v38, "Unexpected exception casting to listInfoRecs"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v10           #e:Ljava/lang/ClassCastException;
    :sswitch_5b
    move-object/from16 v37, v31

    .line 3481
    check-cast v37, [B

    check-cast v37, [B

    invoke-static/range {v37 .. v37}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3488
    :sswitch_5c
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3490
    check-cast v31, [I

    check-cast v31, [I

    const/16 v37, 0x0

    aget v37, v31, v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_8

    const/16 v25, 0x1

    .line 3491
    .local v25, playtone:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v40

    const/16 v41, 0x0

    invoke-direct/range {v38 .. v41}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3490
    .end local v25           #playtone:Z
    :cond_8
    const/16 v25, 0x0

    goto :goto_3

    .line 3497
    :sswitch_5d
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3506
    :sswitch_5e
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3515
    :sswitch_5f
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3524
    :sswitch_60
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3533
    :sswitch_61
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    invoke-direct/range {v38 .. v41}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3542
    :sswitch_62
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3548
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->setRadioPower(ZLandroid/os/Message;)V

    .line 3549
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    move/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 3550
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSubscription:I

    move/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 3551
    check-cast v31, [I

    check-cast v31, [I

    const/16 v37, 0x0

    aget v37, v31, v37

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto/16 :goto_0

    .line 3557
    :sswitch_63
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallForwardingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    move-object/from16 v37, v31

    .line 3560
    check-cast v37, [I

    check-cast v37, [I

    const/16 v38, 0x0

    aget v37, v37, v38

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_9

    const/4 v7, 0x1

    .line 3561
    .local v7, bCfuEnabled:Z
    :goto_4
    check-cast v31, [I

    check-cast v31, [I

    const/16 v37, 0x1

    aget v37, v31, v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_a

    const/4 v8, 0x1

    .line 3563
    .local v8, bIsLine1:Z
    :goto_5
    if-eqz v7, :cond_0

    if-eqz v8, :cond_0

    .line 3564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallForwardingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/os/RegistrantList;->size()I

    move-result v37

    if-nez v37, :cond_b

    const/16 v37, 0x1

    :goto_6
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/RIL;->mbWaitingForECFURegistrants:Z

    .line 3565
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/RIL;->mbWaitingForECFURegistrants:Z

    move/from16 v37, v0

    if-nez v37, :cond_0

    .line 3566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallForwardingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 3560
    .end local v7           #bCfuEnabled:Z
    .end local v8           #bIsLine1:Z
    :cond_9
    const/4 v7, 0x0

    goto :goto_4

    .line 3561
    .restart local v7       #bCfuEnabled:Z
    :cond_a
    const/4 v8, 0x0

    goto :goto_5

    .line 3564
    .restart local v8       #bIsLine1:Z
    :cond_b
    const/16 v37, 0x0

    goto :goto_6

    .line 3573
    .end local v7           #bCfuEnabled:Z
    .end local v8           #bIsLine1:Z
    :sswitch_64
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallRelatedSuppSvcRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallRelatedSuppSvcRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3582
    :sswitch_65
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mNeighboringInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mNeighboringInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3590
    :sswitch_66
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mNetworkInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mNetworkInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3598
    :sswitch_67
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    move-object/from16 v37, v31

    .line 3601
    check-cast v37, [Ljava/lang/String;

    move-object/from16 v4, v37

    check-cast v4, [Ljava/lang/String;

    .line 3602
    .local v4, CallProgressInfo:[Ljava/lang/String;
    const/16 v37, 0x0

    aget-object v37, v4, v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 3603
    .local v9, callId:I
    const/16 v37, 0x1

    aget-object v37, v4, v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 3606
    .local v21, msgType:I
    const/16 v37, 0x85

    move/from16 v0, v21

    move/from16 v1, v37

    if-ne v0, v1, :cond_c

    .line 3608
    const-string v37, "[dwj] RIL_UNSOL_CALL_PROGRESS_INFO and is disconnected now"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    monitor-enter v38

    .line 3611
    const/16 v16, 0x0

    .local v16, i:I
    :goto_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v16

    move/from16 v1, v37

    if-ge v0, v1, :cond_e

    .line 3612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/internal/telephony/RIL$TimerWithIndex;

    .line 3613
    .local v36, tt:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/RIL$TimerWithIndex;->getCallIndex()I

    move-result v37

    move/from16 v0, v37

    if-ne v9, v0, :cond_d

    .line 3615
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[dwj] Call Disconnected generated by ourselves "

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3617
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/RIL$TimerWithIndex;->cancel()V

    .line 3618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3619
    monitor-exit v38
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3628
    .end local v16           #i:I
    .end local v36           #tt:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    :cond_c
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallProgressInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallProgressInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3611
    .restart local v16       #i:I
    .restart local v36       #tt:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    :cond_d
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 3623
    .end local v36           #tt:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    :cond_e
    :try_start_6
    const-string v37, "[dwj] It seems the other side release the call or we already have remove it from the list"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3624
    monitor-exit v38

    goto :goto_8

    :catchall_0
    move-exception v37

    monitor-exit v38
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v37

    .line 3635
    .end local v4           #CallProgressInfo:[Ljava/lang/String;
    .end local v9           #callId:I
    .end local v16           #i:I
    .end local v21           #msgType:I
    :sswitch_68
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mPhbReadyRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mPhbReadyRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 3642
    :sswitch_69
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3649
    :sswitch_6a
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3651
    check-cast v31, [I

    check-cast v31, [I

    const/16 v37, 0x0

    aget v37, v31, v37

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/RIL;->radioTemporarilyUnavailable:I

    goto/16 :goto_0

    .line 3656
    :sswitch_6b
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    move-object/from16 v37, v31

    .line 3657
    check-cast v37, [I

    check-cast v37, [I

    const/16 v38, 0x0

    aget v37, v37, v38

    sput v37, Lcom/android/internal/telephony/RIL;->mSimInsertedStatus:I

    .line 3658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSimInsertedStatusRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSimInsertedStatusRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3664
    :sswitch_6c
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSimMissing:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSimMissing:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3671
    :sswitch_6d
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSimRecovery:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSimRecovery:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3678
    :sswitch_6e
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVirtualSimOn:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVirtualSimOn:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3685
    :sswitch_6f
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVirtualSimOff:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVirtualSimOff:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3692
    :sswitch_70
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mMeSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mMeSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 3700
    :sswitch_71
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsReadyRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsReadyRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 3710
    :sswitch_72
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3718
    :sswitch_73
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVtRingRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVtRingRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_74
    move-object/from16 v37, v31

    .line 3727
    check-cast v37, [I

    check-cast v37, [I

    const/16 v38, 0x0

    aget v37, v37, v38

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    .line 3729
    .local v32, scriResult:Ljava/lang/Integer;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "s:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ":"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v37, v31

    check-cast v37, [I

    check-cast v37, [I

    const/16 v39, 0x0

    aget v37, v37, v39

    move-object/from16 v0, v38

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3731
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mScriResultRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mScriResultRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v32

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3740
    .end local v32           #scriResult:Ljava/lang/Integer;
    :sswitch_75
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGprsDetachRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGprsDetachRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3747
    :sswitch_76
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIncomingCallIndicationRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIncomingCallIndicationRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3754
    :sswitch_77
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mPsNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    invoke-direct/range {v38 .. v41}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3761
    :sswitch_78
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mImeiLockRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mImeiLockRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    invoke-direct/range {v38 .. v41}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3769
    :sswitch_79
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mInvalidSimInfoRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mInvalidSimInfoRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3777
    :sswitch_7a
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    move-object/from16 v37, v31

    .line 3778
    check-cast v37, [I

    check-cast v37, [I

    const/16 v38, 0x0

    aget v37, v37, v38

    sput v37, Lcom/android/internal/telephony/RIL;->mSimInsertedStatus:I

    .line 3779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSimPlugOutRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSimPlugOutRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3785
    :sswitch_7b
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    move-object/from16 v37, v31

    .line 3786
    check-cast v37, [I

    check-cast v37, [I

    const/16 v38, 0x0

    aget v37, v37, v38

    sput v37, Lcom/android/internal/telephony/RIL;->mSimInsertedStatus:I

    .line 3787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSimPlugInRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSimPlugInRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3793
    :sswitch_7c
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3794
    if-eqz v31, :cond_0

    .line 3795
    check-cast v31, [I

    move-object/from16 v6, v31

    check-cast v6, [I

    .line 3796
    .local v6, acmt:[I
    array-length v0, v6

    move/from16 v37, v0

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_0

    .line 3797
    const/16 v37, 0x0

    aget v37, v6, v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 3798
    .local v14, error_type:I
    const/16 v37, 0x1

    aget v13, v6, v37

    .line 3799
    .local v13, error_cause:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-interface {v0, v14, v13}, Lcom/mediatek/common/telephony/IServiceStateExt;->needBrodcastACMT(II)Z

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_0

    .line 3801
    new-instance v19, Landroid/content/Intent;

    const-string v37, "com.VendorName.CauseCode"

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3802
    .local v19, intent:Landroid/content/Intent;
    const-string v37, "CauseCode"

    const/16 v38, 0x1

    aget v38, v6, v38

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3803
    const-string v37, "CauseType"

    const/16 v38, 0x0

    aget v38, v6, v38

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3805
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Broadcast for ACMT: com.VendorName.CauseCode "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x1

    aget v38, v6, v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ","

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x0

    aget v38, v6, v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3814
    .end local v6           #acmt:[I
    .end local v13           #error_cause:I
    .end local v14           #error_type:I
    .end local v19           #intent:Landroid/content/Intent;
    :sswitch_7d
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mEfCspPlmnModeBitRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mEfCspPlmnModeBitRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3822
    :sswitch_7e
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3823
    if-eqz v31, :cond_0

    .line 3824
    check-cast v31, [I

    move-object/from16 v12, v31

    check-cast v12, [I

    .line 3825
    .local v12, emmrrs:[I
    const/16 v37, 0x0

    aget v37, v12, v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 3826
    .local v26, ps_status:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/IServiceStateExt;->isBroadcastEmmrrsPsResume(I)Z

    move-result v37

    if-eqz v37, :cond_0

    .line 3827
    const-string v37, "Broadcast for EMMRRS: android.intent.action.EMMRRS_PS_RESUME "

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3835
    .end local v12           #emmrrs:[I
    .end local v26           #ps_status:I
    :sswitch_7f
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mEtwsNotificationRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 3837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mEtwsNotificationRegistrant:Landroid/os/Registrant;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3091
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_3
        0x3eb -> :sswitch_4
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_6
        0x3ee -> :sswitch_7
        0x3f0 -> :sswitch_8
        0x3f1 -> :sswitch_9
        0x3f2 -> :sswitch_a
        0x3f3 -> :sswitch_b
        0x3f4 -> :sswitch_c
        0x3f5 -> :sswitch_d
        0x3f6 -> :sswitch_e
        0x3f7 -> :sswitch_f
        0x3f8 -> :sswitch_10
        0x3f9 -> :sswitch_11
        0x3fa -> :sswitch_12
        0x3fb -> :sswitch_14
        0x3fc -> :sswitch_15
        0x3fd -> :sswitch_16
        0x3fe -> :sswitch_17
        0x3ff -> :sswitch_13
        0x400 -> :sswitch_18
        0x401 -> :sswitch_19
        0x402 -> :sswitch_1a
        0x403 -> :sswitch_1b
        0x404 -> :sswitch_1c
        0x405 -> :sswitch_1d
        0x406 -> :sswitch_1e
        0x407 -> :sswitch_1f
        0x408 -> :sswitch_20
        0x409 -> :sswitch_21
        0x40a -> :sswitch_22
        0x40b -> :sswitch_23
        0xbb8 -> :sswitch_24
        0xbb9 -> :sswitch_25
        0xbba -> :sswitch_26
        0xbbb -> :sswitch_27
        0xbbc -> :sswitch_28
        0xbbd -> :sswitch_29
        0xbbe -> :sswitch_2f
        0xbbf -> :sswitch_2a
        0xbc0 -> :sswitch_30
        0xbc1 -> :sswitch_31
        0xbc2 -> :sswitch_32
        0xbc3 -> :sswitch_35
        0xbc4 -> :sswitch_33
        0xbc5 -> :sswitch_34
        0xbc6 -> :sswitch_37
        0xbc7 -> :sswitch_2b
        0xbc8 -> :sswitch_36
        0xbca -> :sswitch_2c
        0xbcb -> :sswitch_2d
        0xbcc -> :sswitch_2e
        0xbcd -> :sswitch_3a
        0xbce -> :sswitch_39
        0xbcf -> :sswitch_3b
        0xbd0 -> :sswitch_38
        0xbd1 -> :sswitch_3c
        0xbd2 -> :sswitch_3d
        0xbd3 -> :sswitch_3e
        0xbd4 -> :sswitch_3f
        0xbd5 -> :sswitch_40
    .end sparse-switch

    .line 3177
    :sswitch_data_1
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_41
        0x3ea -> :sswitch_42
        0x3eb -> :sswitch_43
        0x3ec -> :sswitch_44
        0x3ed -> :sswitch_45
        0x3ee -> :sswitch_46
        0x3f0 -> :sswitch_47
        0x3f1 -> :sswitch_48
        0x3f2 -> :sswitch_49
        0x3f3 -> :sswitch_4a
        0x3f4 -> :sswitch_4b
        0x3f5 -> :sswitch_4c
        0x3f6 -> :sswitch_4d
        0x3f7 -> :sswitch_4e
        0x3f8 -> :sswitch_4f
        0x3f9 -> :sswitch_50
        0x3fa -> :sswitch_51
        0x3fb -> :sswitch_53
        0x3fc -> :sswitch_54
        0x3fd -> :sswitch_55
        0x3fe -> :sswitch_56
        0x3ff -> :sswitch_52
        0x400 -> :sswitch_57
        0x401 -> :sswitch_58
        0x402 -> :sswitch_59
        0x403 -> :sswitch_5a
        0x404 -> :sswitch_5b
        0x405 -> :sswitch_5c
        0x406 -> :sswitch_5d
        0x407 -> :sswitch_5f
        0x408 -> :sswitch_60
        0x409 -> :sswitch_61
        0x40a -> :sswitch_62
        0x40b -> :sswitch_5e
        0xbb8 -> :sswitch_65
        0xbb9 -> :sswitch_66
        0xbba -> :sswitch_63
        0xbbb -> :sswitch_64
        0xbbc -> :sswitch_67
        0xbbd -> :sswitch_68
        0xbbe -> :sswitch_69
        0xbbf -> :sswitch_6b
        0xbc0 -> :sswitch_6a
        0xbc1 -> :sswitch_70
        0xbc2 -> :sswitch_71
        0xbc3 -> :sswitch_74
        0xbc4 -> :sswitch_72
        0xbc5 -> :sswitch_73
        0xbc6 -> :sswitch_76
        0xbc7 -> :sswitch_6c
        0xbc8 -> :sswitch_75
        0xbca -> :sswitch_6d
        0xbcb -> :sswitch_6e
        0xbcc -> :sswitch_6f
        0xbcd -> :sswitch_79
        0xbce -> :sswitch_77
        0xbcf -> :sswitch_7c
        0xbd0 -> :sswitch_7d
        0xbd1 -> :sswitch_78
        0xbd2 -> :sswitch_7e
        0xbd3 -> :sswitch_7a
        0xbd4 -> :sswitch_7b
        0xbd5 -> :sswitch_7f
    .end sparse-switch
.end method

.method private static readRilMessage(Ljava/io/InputStream;[B)I
    .locals 8
    .parameter "is"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 554
    const/4 v2, 0x0

    .line 555
    .local v2, offset:I
    const/4 v3, 0x4

    .line 557
    .local v3, remaining:I
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 559
    .local v0, countRead:I
    if-gez v0, :cond_1

    .line 560
    const-string v5, "RILJ"

    const-string v6, "Hit EOS reading message length"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 589
    :goto_0
    return v1

    .line 564
    :cond_1
    add-int/2addr v2, v0

    .line 565
    sub-int/2addr v3, v0

    .line 566
    if-gtz v3, :cond_0

    .line 568
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    const/4 v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/4 v6, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/4 v6, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v1, v5, v6

    .line 574
    .local v1, messageLength:I
    const/4 v2, 0x0

    .line 575
    move v3, v1

    .line 577
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 579
    if-gez v0, :cond_3

    .line 580
    const-string v5, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hit EOS reading message.  messageLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " remaining="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 582
    goto :goto_0

    .line 585
    :cond_3
    add-int/2addr v2, v0

    .line 586
    sub-int/2addr v3, v0

    .line 587
    if-gtz v3, :cond_2

    goto :goto_0
.end method

.method private releaseWakeLockIfDone()V
    .locals 3

    .prologue
    .line 2616
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 2617
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2622
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RIL$RILSender;->removeMessages(I)V

    .line 2623
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2625
    :cond_0
    monitor-exit v1

    .line 2626
    return-void

    .line 2625
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private requestConnectSIM(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 5725
    const/16 v1, 0x7e7

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5727
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5729
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5730
    return-void
.end method

.method private requestDisconnectOrPowerOffSIM(ILandroid/os/Message;)V
    .locals 3
    .parameter "nAction"
    .parameter "response"

    .prologue
    .line 5736
    const/16 v1, 0x7e8

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5738
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5742
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5743
    return-void
.end method

.method private requestPowerOnOrResetSIM(IILandroid/os/Message;)V
    .locals 3
    .parameter "nAction"
    .parameter "nType"
    .parameter "response"

    .prologue
    .line 5749
    const/16 v1, 0x7e9

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5751
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5752
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5753
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5758
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5759
    return-void
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .parameter "request"

    .prologue
    .line 4554
    sparse-switch p0, :sswitch_data_0

    .line 4758
    const-string v0, "<unknown request>"

    :goto_0
    return-object v0

    .line 4555
    :sswitch_0
    const-string v0, "GET_SIM_STATUS"

    goto :goto_0

    .line 4556
    :sswitch_1
    const-string v0, "ENTER_SIM_PIN"

    goto :goto_0

    .line 4557
    :sswitch_2
    const-string v0, "ENTER_SIM_PUK"

    goto :goto_0

    .line 4558
    :sswitch_3
    const-string v0, "ENTER_SIM_PIN2"

    goto :goto_0

    .line 4559
    :sswitch_4
    const-string v0, "ENTER_SIM_PUK2"

    goto :goto_0

    .line 4560
    :sswitch_5
    const-string v0, "CHANGE_SIM_PIN"

    goto :goto_0

    .line 4561
    :sswitch_6
    const-string v0, "CHANGE_SIM_PIN2"

    goto :goto_0

    .line 4562
    :sswitch_7
    const-string v0, "ENTER_NETWORK_DEPERSONALIZATION"

    goto :goto_0

    .line 4563
    :sswitch_8
    const-string v0, "GET_CURRENT_CALLS"

    goto :goto_0

    .line 4564
    :sswitch_9
    const-string v0, "DIAL"

    goto :goto_0

    .line 4565
    :sswitch_a
    const-string v0, "GET_IMSI"

    goto :goto_0

    .line 4566
    :sswitch_b
    const-string v0, "HANGUP"

    goto :goto_0

    .line 4567
    :sswitch_c
    const-string v0, "HANGUP_WAITING_OR_BACKGROUND"

    goto :goto_0

    .line 4568
    :sswitch_d
    const-string v0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    goto :goto_0

    .line 4569
    :sswitch_e
    const-string v0, "REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    goto :goto_0

    .line 4570
    :sswitch_f
    const-string v0, "CONFERENCE"

    goto :goto_0

    .line 4571
    :sswitch_10
    const-string v0, "UDUB"

    goto :goto_0

    .line 4572
    :sswitch_11
    const-string v0, "LAST_CALL_FAIL_CAUSE"

    goto :goto_0

    .line 4573
    :sswitch_12
    const-string v0, "SIGNAL_STRENGTH"

    goto :goto_0

    .line 4574
    :sswitch_13
    const-string v0, "VOICE_REGISTRATION_STATE"

    goto :goto_0

    .line 4575
    :sswitch_14
    const-string v0, "DATA_REGISTRATION_STATE"

    goto :goto_0

    .line 4576
    :sswitch_15
    const-string v0, "OPERATOR"

    goto :goto_0

    .line 4577
    :sswitch_16
    const-string v0, "RADIO_POWER"

    goto :goto_0

    .line 4578
    :sswitch_17
    const-string v0, "DTMF"

    goto :goto_0

    .line 4579
    :sswitch_18
    const-string v0, "SEND_SMS"

    goto :goto_0

    .line 4580
    :sswitch_19
    const-string v0, "SEND_SMS_EXPECT_MORE"

    goto :goto_0

    .line 4581
    :sswitch_1a
    const-string v0, "SETUP_DATA_CALL"

    goto :goto_0

    .line 4582
    :sswitch_1b
    const-string v0, "SIM_IO"

    goto :goto_0

    .line 4584
    :sswitch_1c
    const-string v0, "SIM_TRANSMIT_BASIC"

    goto :goto_0

    .line 4585
    :sswitch_1d
    const-string v0, "SIM_OPEN_CHANNEL"

    goto :goto_0

    .line 4586
    :sswitch_1e
    const-string v0, "SIM_CLOSE_CHANNEL"

    goto :goto_0

    .line 4587
    :sswitch_1f
    const-string v0, "SIM_TRANSMIT_CHANNEL"

    goto :goto_0

    .line 4588
    :sswitch_20
    const-string v0, "SIM_GET_ATR"

    goto :goto_0

    .line 4590
    :sswitch_21
    const-string v0, "SEND_USSD"

    goto :goto_0

    .line 4591
    :sswitch_22
    const-string v0, "CANCEL_USSD"

    goto :goto_0

    .line 4592
    :sswitch_23
    const-string v0, "GET_CLIR"

    goto :goto_0

    .line 4593
    :sswitch_24
    const-string v0, "SET_CLIR"

    goto :goto_0

    .line 4594
    :sswitch_25
    const-string v0, "QUERY_CALL_FORWARD_STATUS"

    goto :goto_0

    .line 4595
    :sswitch_26
    const-string v0, "SET_CALL_FORWARD"

    goto :goto_0

    .line 4596
    :sswitch_27
    const-string v0, "QUERY_CALL_WAITING"

    goto :goto_0

    .line 4597
    :sswitch_28
    const-string v0, "SET_CALL_WAITING"

    goto :goto_0

    .line 4598
    :sswitch_29
    const-string v0, "SMS_ACKNOWLEDGE"

    goto :goto_0

    .line 4599
    :sswitch_2a
    const-string v0, "GET_IMEI"

    goto/16 :goto_0

    .line 4600
    :sswitch_2b
    const-string v0, "GET_IMEISV"

    goto/16 :goto_0

    .line 4601
    :sswitch_2c
    const-string v0, "ANSWER"

    goto/16 :goto_0

    .line 4602
    :sswitch_2d
    const-string v0, "DEACTIVATE_DATA_CALL"

    goto/16 :goto_0

    .line 4603
    :sswitch_2e
    const-string v0, "QUERY_FACILITY_LOCK"

    goto/16 :goto_0

    .line 4604
    :sswitch_2f
    const-string v0, "SET_FACILITY_LOCK"

    goto/16 :goto_0

    .line 4605
    :sswitch_30
    const-string v0, "CHANGE_BARRING_PASSWORD"

    goto/16 :goto_0

    .line 4606
    :sswitch_31
    const-string v0, "QUERY_NETWORK_SELECTION_MODE"

    goto/16 :goto_0

    .line 4607
    :sswitch_32
    const-string v0, "SET_NETWORK_SELECTION_AUTOMATIC"

    goto/16 :goto_0

    .line 4608
    :sswitch_33
    const-string v0, "SET_NETWORK_SELECTION_MANUAL"

    goto/16 :goto_0

    .line 4609
    :sswitch_34
    const-string v0, "QUERY_AVAILABLE_NETWORKS "

    goto/16 :goto_0

    .line 4610
    :sswitch_35
    const-string v0, "DTMF_START"

    goto/16 :goto_0

    .line 4611
    :sswitch_36
    const-string v0, "DTMF_STOP"

    goto/16 :goto_0

    .line 4612
    :sswitch_37
    const-string v0, "BASEBAND_VERSION"

    goto/16 :goto_0

    .line 4613
    :sswitch_38
    const-string v0, "SEPARATE_CONNECTION"

    goto/16 :goto_0

    .line 4614
    :sswitch_39
    const-string v0, "SET_MUTE"

    goto/16 :goto_0

    .line 4615
    :sswitch_3a
    const-string v0, "GET_MUTE"

    goto/16 :goto_0

    .line 4616
    :sswitch_3b
    const-string v0, "QUERY_CLIP"

    goto/16 :goto_0

    .line 4617
    :sswitch_3c
    const-string v0, "LAST_DATA_CALL_FAIL_CAUSE"

    goto/16 :goto_0

    .line 4618
    :sswitch_3d
    const-string v0, "DATA_CALL_LIST"

    goto/16 :goto_0

    .line 4619
    :sswitch_3e
    const-string v0, "RESET_RADIO"

    goto/16 :goto_0

    .line 4620
    :sswitch_3f
    const-string v0, "OEM_HOOK_RAW"

    goto/16 :goto_0

    .line 4621
    :sswitch_40
    const-string v0, "OEM_HOOK_STRINGS"

    goto/16 :goto_0

    .line 4622
    :sswitch_41
    const-string v0, "SCREEN_STATE"

    goto/16 :goto_0

    .line 4623
    :sswitch_42
    const-string v0, "SET_SUPP_SVC_NOTIFICATION"

    goto/16 :goto_0

    .line 4624
    :sswitch_43
    const-string v0, "WRITE_SMS_TO_SIM"

    goto/16 :goto_0

    .line 4625
    :sswitch_44
    const-string v0, "DELETE_SMS_ON_SIM"

    goto/16 :goto_0

    .line 4626
    :sswitch_45
    const-string v0, "SET_BAND_MODE"

    goto/16 :goto_0

    .line 4627
    :sswitch_46
    const-string v0, "QUERY_AVAILABLE_BAND_MODE"

    goto/16 :goto_0

    .line 4628
    :sswitch_47
    const-string v0, "REQUEST_STK_GET_PROFILE"

    goto/16 :goto_0

    .line 4629
    :sswitch_48
    const-string v0, "REQUEST_STK_SET_PROFILE"

    goto/16 :goto_0

    .line 4630
    :sswitch_49
    const-string v0, "REQUEST_STK_SEND_ENVELOPE_COMMAND"

    goto/16 :goto_0

    .line 4631
    :sswitch_4a
    const-string v0, "REQUEST_STK_SEND_TERMINAL_RESPONSE"

    goto/16 :goto_0

    .line 4632
    :sswitch_4b
    const-string v0, "REQUEST_STK_HANDLE_CALL_SETUP_REQUESTED_FROM_SIM"

    goto/16 :goto_0

    .line 4633
    :sswitch_4c
    const-string v0, "REQUEST_EXPLICIT_CALL_TRANSFER"

    goto/16 :goto_0

    .line 4634
    :sswitch_4d
    const-string v0, "REQUEST_SET_PREFERRED_NETWORK_TYPE"

    goto/16 :goto_0

    .line 4635
    :sswitch_4e
    const-string v0, "REQUEST_GET_PREFERRED_NETWORK_TYPE"

    goto/16 :goto_0

    .line 4636
    :sswitch_4f
    const-string v0, "REQUEST_GET_NEIGHBORING_CELL_IDS"

    goto/16 :goto_0

    .line 4637
    :sswitch_50
    const-string v0, "REQUEST_SET_LOCATION_UPDATES"

    goto/16 :goto_0

    .line 4638
    :sswitch_51
    const-string v0, "RIL_REQUEST_CDMA_SET_SUBSCRIPTION_SOURCE"

    goto/16 :goto_0

    .line 4639
    :sswitch_52
    const-string v0, "RIL_REQUEST_CDMA_SET_ROAMING_PREFERENCE"

    goto/16 :goto_0

    .line 4640
    :sswitch_53
    const-string v0, "RIL_REQUEST_CDMA_QUERY_ROAMING_PREFERENCE"

    goto/16 :goto_0

    .line 4641
    :sswitch_54
    const-string v0, "RIL_REQUEST_SET_TTY_MODE"

    goto/16 :goto_0

    .line 4642
    :sswitch_55
    const-string v0, "RIL_REQUEST_QUERY_TTY_MODE"

    goto/16 :goto_0

    .line 4643
    :sswitch_56
    const-string v0, "RIL_REQUEST_CDMA_SET_PREFERRED_VOICE_PRIVACY_MODE"

    goto/16 :goto_0

    .line 4644
    :sswitch_57
    const-string v0, "RIL_REQUEST_CDMA_QUERY_PREFERRED_VOICE_PRIVACY_MODE"

    goto/16 :goto_0

    .line 4645
    :sswitch_58
    const-string v0, "RIL_REQUEST_CDMA_FLASH"

    goto/16 :goto_0

    .line 4646
    :sswitch_59
    const-string v0, "RIL_REQUEST_CDMA_BURST_DTMF"

    goto/16 :goto_0

    .line 4647
    :sswitch_5a
    const-string v0, "RIL_REQUEST_CDMA_SEND_SMS"

    goto/16 :goto_0

    .line 4648
    :sswitch_5b
    const-string v0, "RIL_REQUEST_CDMA_SMS_ACKNOWLEDGE"

    goto/16 :goto_0

    .line 4649
    :sswitch_5c
    const-string v0, "RIL_REQUEST_GSM_GET_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 4650
    :sswitch_5d
    const-string v0, "RIL_REQUEST_GSM_SET_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 4651
    :sswitch_5e
    const-string v0, "RIL_REQUEST_CDMA_GET_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 4652
    :sswitch_5f
    const-string v0, "RIL_REQUEST_CDMA_SET_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 4653
    :sswitch_60
    const-string v0, "RIL_REQUEST_GSM_BROADCAST_ACTIVATION"

    goto/16 :goto_0

    .line 4654
    :sswitch_61
    const-string v0, "RIL_REQUEST_CDMA_VALIDATE_AND_WRITE_AKEY"

    goto/16 :goto_0

    .line 4655
    :sswitch_62
    const-string v0, "RIL_REQUEST_CDMA_BROADCAST_ACTIVATION"

    goto/16 :goto_0

    .line 4656
    :sswitch_63
    const-string v0, "RIL_REQUEST_CDMA_SUBSCRIPTION"

    goto/16 :goto_0

    .line 4657
    :sswitch_64
    const-string v0, "RIL_REQUEST_CDMA_WRITE_SMS_TO_RUIM"

    goto/16 :goto_0

    .line 4658
    :sswitch_65
    const-string v0, "RIL_REQUEST_CDMA_DELETE_SMS_ON_RUIM"

    goto/16 :goto_0

    .line 4659
    :sswitch_66
    const-string v0, "RIL_REQUEST_DEVICE_IDENTITY"

    goto/16 :goto_0

    .line 4660
    :sswitch_67
    const-string v0, "RIL_REQUEST_GET_SMSC_ADDRESS"

    goto/16 :goto_0

    .line 4661
    :sswitch_68
    const-string v0, "RIL_REQUEST_SET_SMSC_ADDRESS"

    goto/16 :goto_0

    .line 4662
    :sswitch_69
    const-string v0, "REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    goto/16 :goto_0

    .line 4663
    :sswitch_6a
    const-string v0, "RIL_REQUEST_REPORT_SMS_MEMORY_STATUS"

    goto/16 :goto_0

    .line 4664
    :sswitch_6b
    const-string v0, "RIL_REQUEST_REPORT_STK_SERVICE_IS_RUNNING"

    goto/16 :goto_0

    .line 4666
    :sswitch_6c
    const-string v0, "GET_NITZ_TIME"

    goto/16 :goto_0

    .line 4667
    :sswitch_6d
    const-string v0, "RIL_REQUEST_CDMA_GET_SUBSCRIPTION_SOURCE"

    goto/16 :goto_0

    .line 4668
    :sswitch_6e
    const-string v0, "RIL_REQUEST_ISIM_AUTHENTICATION"

    goto/16 :goto_0

    .line 4669
    :sswitch_6f
    const-string v0, "RIL_REQUEST_VOICE_RADIO_TECH"

    goto/16 :goto_0

    .line 4672
    :sswitch_70
    const-string v0, "EMERGENCY_DIAL"

    goto/16 :goto_0

    .line 4674
    :sswitch_71
    const-string v0, "VT_DIAL"

    goto/16 :goto_0

    .line 4675
    :sswitch_72
    const-string v0, "VOICE_ACCEPT"

    goto/16 :goto_0

    .line 4677
    :sswitch_73
    const-string v0, "HANGUP_ALL"

    goto/16 :goto_0

    .line 4678
    :sswitch_74
    const-string v0, "HANGUP_ALL_EX"

    goto/16 :goto_0

    .line 4679
    :sswitch_75
    const-string v0, "GET_CCM"

    goto/16 :goto_0

    .line 4680
    :sswitch_76
    const-string v0, "GET_ACM"

    goto/16 :goto_0

    .line 4681
    :sswitch_77
    const-string v0, "GET_ACMMAX"

    goto/16 :goto_0

    .line 4682
    :sswitch_78
    const-string v0, "GET_PPU_AND_CURRENCY"

    goto/16 :goto_0

    .line 4683
    :sswitch_79
    const-string v0, "SET_ACMMAX"

    goto/16 :goto_0

    .line 4684
    :sswitch_7a
    const-string v0, "RESET_ACM"

    goto/16 :goto_0

    .line 4685
    :sswitch_7b
    const-string v0, "SET_PPU_AND_CURRENCY"

    goto/16 :goto_0

    .line 4686
    :sswitch_7c
    const-string v0, "RADIO_POWEROFF"

    goto/16 :goto_0

    .line 4687
    :sswitch_7d
    const-string v0, "RADIO_POWERON"

    goto/16 :goto_0

    .line 4688
    :sswitch_7e
    const-string v0, "DUAL_SIM_MODE_SWITCH"

    goto/16 :goto_0

    .line 4689
    :sswitch_7f
    const-string v0, "RIL_REQUEST_SET_GPRS_CONNECT_TYPE"

    goto/16 :goto_0

    .line 4690
    :sswitch_80
    const-string v0, "RIL_REQUEST_SET_GPRS_TRANSFER_TYPE"

    goto/16 :goto_0

    .line 4691
    :sswitch_81
    const-string v0, "SET_NETWORK_SELECTION_MANUAL_WITH_ACT"

    goto/16 :goto_0

    .line 4692
    :sswitch_82
    const-string v0, "GET_COLP"

    goto/16 :goto_0

    .line 4693
    :sswitch_83
    const-string v0, "SET_COLP"

    goto/16 :goto_0

    .line 4694
    :sswitch_84
    const-string v0, "GET_COLR"

    goto/16 :goto_0

    .line 4695
    :sswitch_85
    const-string v0, "RIL_REQUEST_QUERY_PHB_STORAGE_INFO"

    goto/16 :goto_0

    .line 4696
    :sswitch_86
    const-string v0, "RIL_REQUEST_WRITE_PHB_ENTRY"

    goto/16 :goto_0

    .line 4697
    :sswitch_87
    const-string v0, "RIL_REQUEST_READ_PHB_ENTRY"

    goto/16 :goto_0

    .line 4698
    :sswitch_88
    const-string v0, "RIL_REQUEST_MOBILEREVISION_AND_IMEI"

    goto/16 :goto_0

    .line 4699
    :sswitch_89
    const-string v0, "QUERY_SIM_NETWORK_LOCK"

    goto/16 :goto_0

    .line 4700
    :sswitch_8a
    const-string v0, "SET_SIM_NETWORK_LOCK"

    goto/16 :goto_0

    .line 4701
    :sswitch_8b
    const-string v0, "RIL_REQUEST_SET_SCRI"

    goto/16 :goto_0

    .line 4702
    :sswitch_8c
    const-string v0, "RIL_REQUEST_SET_FD_MODE"

    goto/16 :goto_0

    .line 4703
    :sswitch_8d
    const-string v0, "RIL_REQUEST_BTSIM_CONNECT"

    goto/16 :goto_0

    .line 4704
    :sswitch_8e
    const-string v0, "RIL_REQUEST_BTSIM_DISCONNECT_OR_POWEROFF"

    goto/16 :goto_0

    .line 4705
    :sswitch_8f
    const-string v0, "RIL_REQUEST_BTSIM_POWERON_OR_RESETSIM"

    goto/16 :goto_0

    .line 4706
    :sswitch_90
    const-string v0, "RIL_REQUEST_SEND_BTSIM_TRANSFERAPDU"

    goto/16 :goto_0

    .line 4707
    :sswitch_91
    const-string v0, "RIL_REQUEST_QUERY_ICCID"

    goto/16 :goto_0

    .line 4708
    :sswitch_92
    const-string v0, "RIL_REQUEST_SIM_AUTHENTICATION"

    goto/16 :goto_0

    .line 4709
    :sswitch_93
    const-string v0, "RIL_REQUEST_USIM_AUTHENTICATION"

    goto/16 :goto_0

    .line 4710
    :sswitch_94
    const-string v0, "RIL_REQUEST_GET_SMS_SIM_MEM_STATUS"

    goto/16 :goto_0

    .line 4711
    :sswitch_95
    const-string v0, "RIL_REQUEST_FORCE_RELEASE_CALL"

    goto/16 :goto_0

    .line 4712
    :sswitch_96
    const-string v0, "RIL_REQUEST_SET_CALL_INDICATION"

    goto/16 :goto_0

    .line 4713
    :sswitch_97
    const-string v0, "RIL_REQUEST_REPLACE_VT_CALL"

    goto/16 :goto_0

    .line 4714
    :sswitch_98
    const-string v0, "RIL_REQUEST_GET_3G_CAPABILITY"

    goto/16 :goto_0

    .line 4715
    :sswitch_99
    const-string v0, "RIL_REQUEST_SET_3G_CAPABILITY"

    goto/16 :goto_0

    .line 4716
    :sswitch_9a
    const-string v0, "RIL_REQUEST_GET_POL_CAPABILITY"

    goto/16 :goto_0

    .line 4717
    :sswitch_9b
    const-string v0, "RIL_REQUEST_GET_POL_LIST"

    goto/16 :goto_0

    .line 4718
    :sswitch_9c
    const-string v0, "RIL_REQUEST_SET_POL_ENTRY"

    goto/16 :goto_0

    .line 4719
    :sswitch_9d
    const-string v0, "RIL_REQUEST_QUERY_UPB_CAPABILITY"

    goto/16 :goto_0

    .line 4720
    :sswitch_9e
    const-string v0, "RIL_REQUEST_EDIT_UPB_ENTRY"

    goto/16 :goto_0

    .line 4721
    :sswitch_9f
    const-string v0, "RIL_REQUEST_DELETE_UPB_ENTRY"

    goto/16 :goto_0

    .line 4722
    :sswitch_a0
    const-string v0, "RIL_REQUEST_READ_UPB_GAS_LIST"

    goto/16 :goto_0

    .line 4723
    :sswitch_a1
    const-string v0, "RIL_REQUEST_READ_UPB_GRP"

    goto/16 :goto_0

    .line 4724
    :sswitch_a2
    const-string v0, "RIL_REQUEST_WRITE_UPB_GRP"

    goto/16 :goto_0

    .line 4725
    :sswitch_a3
    const-string v0, "RIL_REQUEST_DISABLE_VT_CAPABILITY"

    goto/16 :goto_0

    .line 4726
    :sswitch_a4
    const-string v0, "RIL_REQUEST_SET_SIM_RECOVERY_ON"

    goto/16 :goto_0

    .line 4727
    :sswitch_a5
    const-string v0, "RIL_REQUEST_GET_SIM_RECOVERY_ON"

    goto/16 :goto_0

    .line 4730
    :sswitch_a6
    const-string v0, "RIL_REQUEST_SET_TRM"

    goto/16 :goto_0

    .line 4733
    :sswitch_a7
    const-string v0, "RIL_REQUEST_ACKNOWLEDGE_INCOMING_GSM_SMS_WITH_PDU"

    goto/16 :goto_0

    .line 4734
    :sswitch_a8
    const-string v0, "RIL_REQUEST_STK_SEND_ENVELOPE_WITH_STATUS"

    goto/16 :goto_0

    .line 4736
    :sswitch_a9
    const-string v0, "RIL_REQUEST_DETECT_SIM_MISSING"

    goto/16 :goto_0

    .line 4739
    :sswitch_aa
    const-string v0, "GET_CALIBRATION_DATA"

    goto/16 :goto_0

    .line 4741
    :sswitch_ab
    const-string v0, "RIL_REQUEST_GET_PHB_STRING_LENGTH"

    goto/16 :goto_0

    .line 4742
    :sswitch_ac
    const-string v0, "RIL_REQUEST_GET_PHB_MEM_STORAGE"

    goto/16 :goto_0

    .line 4743
    :sswitch_ad
    const-string v0, "RIL_REQUEST_SET_PHB_MEM_STORAGE"

    goto/16 :goto_0

    .line 4744
    :sswitch_ae
    const-string v0, "RIL_REQUEST_READ_PHB_ENTRY_EXT"

    goto/16 :goto_0

    .line 4745
    :sswitch_af
    const-string v0, "RIL_REQUEST_WRITE_PHB_ENTRY_EXT"

    goto/16 :goto_0

    .line 4747
    :sswitch_b0
    const-string v0, "RIL_REQUEST_QUERY_UIM_INSERTED"

    goto/16 :goto_0

    .line 4749
    :sswitch_b1
    const-string v0, "RIL_REQUEST_GET_SMS_PARAMS"

    goto/16 :goto_0

    .line 4750
    :sswitch_b2
    const-string v0, "RIL_REQUEST_SET_SMS_PARAMS"

    goto/16 :goto_0

    .line 4752
    :sswitch_b3
    const-string v0, "SET_ETWS"

    goto/16 :goto_0

    .line 4753
    :sswitch_b4
    const-string v0, "RIL_REQUEST_SET_CB_CHANNEL_CONFIG_INFO"

    goto/16 :goto_0

    .line 4754
    :sswitch_b5
    const-string v0, "RIL_REQUEST_SET_CB_LANGUAGE_CONFIG_INFO"

    goto/16 :goto_0

    .line 4755
    :sswitch_b6
    const-string v0, "RIL_REQUEST_GET_CB_CONFIG_INFO"

    goto/16 :goto_0

    .line 4756
    :sswitch_b7
    const-string v0, "RIL_REQUEST_SET_ALL_CB_LANGUAGE_ON"

    goto/16 :goto_0

    .line 4554
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x15 -> :sswitch_14
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_18
        0x1a -> :sswitch_19
        0x1b -> :sswitch_1a
        0x1c -> :sswitch_1b
        0x1d -> :sswitch_21
        0x1e -> :sswitch_22
        0x1f -> :sswitch_23
        0x20 -> :sswitch_24
        0x21 -> :sswitch_25
        0x22 -> :sswitch_26
        0x23 -> :sswitch_27
        0x24 -> :sswitch_28
        0x25 -> :sswitch_29
        0x26 -> :sswitch_2a
        0x27 -> :sswitch_2b
        0x28 -> :sswitch_2c
        0x29 -> :sswitch_2d
        0x2a -> :sswitch_2e
        0x2b -> :sswitch_2f
        0x2c -> :sswitch_30
        0x2d -> :sswitch_31
        0x2e -> :sswitch_32
        0x2f -> :sswitch_33
        0x30 -> :sswitch_34
        0x31 -> :sswitch_35
        0x32 -> :sswitch_36
        0x33 -> :sswitch_37
        0x34 -> :sswitch_38
        0x35 -> :sswitch_39
        0x36 -> :sswitch_3a
        0x37 -> :sswitch_3b
        0x38 -> :sswitch_3c
        0x39 -> :sswitch_3d
        0x3a -> :sswitch_3e
        0x3b -> :sswitch_3f
        0x3c -> :sswitch_40
        0x3d -> :sswitch_41
        0x3e -> :sswitch_42
        0x3f -> :sswitch_43
        0x40 -> :sswitch_44
        0x41 -> :sswitch_45
        0x42 -> :sswitch_46
        0x43 -> :sswitch_47
        0x44 -> :sswitch_48
        0x45 -> :sswitch_49
        0x46 -> :sswitch_4a
        0x47 -> :sswitch_4b
        0x48 -> :sswitch_4c
        0x49 -> :sswitch_4d
        0x4a -> :sswitch_4e
        0x4b -> :sswitch_4f
        0x4c -> :sswitch_50
        0x4d -> :sswitch_51
        0x4e -> :sswitch_52
        0x4f -> :sswitch_53
        0x50 -> :sswitch_54
        0x51 -> :sswitch_55
        0x52 -> :sswitch_56
        0x53 -> :sswitch_57
        0x54 -> :sswitch_58
        0x55 -> :sswitch_59
        0x56 -> :sswitch_61
        0x57 -> :sswitch_5a
        0x58 -> :sswitch_5b
        0x59 -> :sswitch_5c
        0x5a -> :sswitch_5d
        0x5b -> :sswitch_60
        0x5c -> :sswitch_5e
        0x5d -> :sswitch_5f
        0x5e -> :sswitch_62
        0x5f -> :sswitch_63
        0x60 -> :sswitch_64
        0x61 -> :sswitch_65
        0x62 -> :sswitch_66
        0x63 -> :sswitch_69
        0x64 -> :sswitch_67
        0x65 -> :sswitch_68
        0x66 -> :sswitch_6a
        0x67 -> :sswitch_6b
        0x68 -> :sswitch_6d
        0x69 -> :sswitch_6e
        0x6a -> :sswitch_a7
        0x6b -> :sswitch_a8
        0x6c -> :sswitch_6f
        0x92 -> :sswitch_6c
        0x1f4 -> :sswitch_b0
        0x7d0 -> :sswitch_73
        0x7d1 -> :sswitch_82
        0x7d2 -> :sswitch_83
        0x7d3 -> :sswitch_84
        0x7d4 -> :sswitch_75
        0x7d5 -> :sswitch_76
        0x7d6 -> :sswitch_77
        0x7d7 -> :sswitch_78
        0x7d8 -> :sswitch_79
        0x7d9 -> :sswitch_7a
        0x7da -> :sswitch_7b
        0x7db -> :sswitch_7c
        0x7dc -> :sswitch_7e
        0x7dd -> :sswitch_85
        0x7de -> :sswitch_86
        0x7df -> :sswitch_87
        0x7e0 -> :sswitch_7f
        0x7e1 -> :sswitch_80
        0x7e2 -> :sswitch_88
        0x7e3 -> :sswitch_89
        0x7e4 -> :sswitch_8a
        0x7e5 -> :sswitch_8b
        0x7e6 -> :sswitch_71
        0x7e7 -> :sswitch_8d
        0x7e8 -> :sswitch_8e
        0x7e9 -> :sswitch_8f
        0x7ea -> :sswitch_90
        0x7eb -> :sswitch_70
        0x7ec -> :sswitch_81
        0x7ed -> :sswitch_91
        0x7ee -> :sswitch_92
        0x7ef -> :sswitch_93
        0x7f0 -> :sswitch_72
        0x7f1 -> :sswitch_7d
        0x7f2 -> :sswitch_94
        0x7f3 -> :sswitch_95
        0x7f4 -> :sswitch_96
        0x7f5 -> :sswitch_97
        0x7f6 -> :sswitch_98
        0x7f7 -> :sswitch_99
        0x7f8 -> :sswitch_9a
        0x7f9 -> :sswitch_9b
        0x7fa -> :sswitch_9c
        0x7fb -> :sswitch_9d
        0x7fc -> :sswitch_9e
        0x7fd -> :sswitch_9f
        0x7fe -> :sswitch_a0
        0x7ff -> :sswitch_a1
        0x800 -> :sswitch_a2
        0x801 -> :sswitch_a3
        0x802 -> :sswitch_74
        0x803 -> :sswitch_a4
        0x804 -> :sswitch_a5
        0x805 -> :sswitch_a6
        0x806 -> :sswitch_a9
        0x807 -> :sswitch_aa
        0x808 -> :sswitch_ab
        0x809 -> :sswitch_ac
        0x80a -> :sswitch_ad
        0x80b -> :sswitch_ae
        0x80c -> :sswitch_af
        0x80d -> :sswitch_b1
        0x80e -> :sswitch_b2
        0x80f -> :sswitch_1c
        0x810 -> :sswitch_1d
        0x811 -> :sswitch_1e
        0x812 -> :sswitch_1f
        0x813 -> :sswitch_20
        0x814 -> :sswitch_b4
        0x815 -> :sswitch_b5
        0x816 -> :sswitch_b6
        0x817 -> :sswitch_b7
        0x818 -> :sswitch_b3
        0x819 -> :sswitch_8c
    .end sparse-switch
.end method

.method private requestTransferApdu(IILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "nAction"
    .parameter "nType"
    .parameter "strData"
    .parameter "response"

    .prologue
    .line 5765
    const/16 v1, 0x7ea

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5767
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5768
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5769
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5770
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5775
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5776
    return-void
.end method

.method private responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .parameter "p"

    .prologue
    .line 3888
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3890
    .local v2, numInfos:I
    new-array v1, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 3892
    .local v1, infos:[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3893
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v3, v1, v0

    .line 3895
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 3896
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 3897
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 3898
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 3899
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 3900
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 3892
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3903
    :cond_0
    return-object v1
.end method

.method private responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14
    .parameter "p"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 4073
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4074
    .local v3, num:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4081
    .local v4, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_6

    .line 4082
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 4084
    .local v0, dc:Lcom/android/internal/telephony/DriverCall;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 4085
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 4086
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 4087
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    :goto_1
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 4088
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v8, v9

    :goto_2
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 4089
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 4090
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4091
    .local v7, voiceSettings:I
    if-nez v7, :cond_2

    move v8, v10

    :goto_3
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 4092
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    :goto_4
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 4093
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 4094
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4095
    .local v2, np:I
    invoke-static {v2}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 4096
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 4097
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 4098
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4099
    .local v6, uusInfoPresent:I
    if-ne v6, v9, :cond_4

    .line 4100
    new-instance v8, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v8}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 4101
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 4102
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 4103
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 4104
    .local v5, userData:[B
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 4105
    const-string v8, "Incoming UUS : type=%d, dcs=%d, length=%d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v10

    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    const/4 v12, 0x2

    iget-object v13, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v13}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 4108
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incoming UUS : data (string)="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v11, Ljava/lang/String;

    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 4110
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incoming UUS : data (hex): "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v11}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 4117
    .end local v5           #userData:[B
    :goto_5
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v11, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v8, v11}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 4119
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4121
    iget-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v8, :cond_5

    .line 4122
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 4123
    const-string v8, "InCall VoicePrivacy is enabled"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4081
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v2           #np:I
    .end local v6           #uusInfoPresent:I
    .end local v7           #voiceSettings:I
    :cond_0
    move v8, v10

    .line 4087
    goto/16 :goto_1

    :cond_1
    move v8, v10

    .line 4088
    goto/16 :goto_2

    .restart local v7       #voiceSettings:I
    :cond_2
    move v8, v9

    .line 4091
    goto/16 :goto_3

    :cond_3
    move v8, v10

    .line 4092
    goto/16 :goto_4

    .line 4113
    .restart local v2       #np:I
    .restart local v6       #uusInfoPresent:I
    :cond_4
    const-string v8, "Incoming UUS : NOT present!"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    goto :goto_5

    .line 4125
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 4126
    const-string v8, "InCall VoicePrivacy is disabled"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_6

    .line 4130
    .end local v0           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v2           #np:I
    .end local v6           #uusInfoPresent:I
    .end local v7           #voiceSettings:I
    :cond_6
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4132
    if-nez v3, :cond_7

    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4133
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v8, :cond_7

    .line 4134
    const-string/jumbo v8, "responseCallList: call ended, testing emergency call, notify ECM Registrants"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4136
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v8}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 4140
    :cond_7
    return-object v4
.end method

.method private responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .parameter "p"

    .prologue
    .line 4489
    const/4 v1, 0x4

    new-array v0, v1, [C

    .line 4491
    .local v0, response:[C
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 4492
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 4493
    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 4494
    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 4496
    return-object v0
.end method

.method private responseCbConfig(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .parameter "p"

    .prologue
    const/4 v0, 0x1

    .line 6021
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6022
    .local v3, mode:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6023
    .local v1, channels:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6024
    .local v2, languages:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 6026
    .local v0, allOn:Z
    :goto_0
    new-instance v4, Lcom/android/internal/telephony/CellBroadcastConfigInfo;

    invoke-direct {v4, v3, v1, v2, v0}, Lcom/android/internal/telephony/CellBroadcastConfigInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v4

    .line 6024
    .end local v0           #allOn:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7
    .parameter "p"

    .prologue
    const/4 v6, 0x0

    .line 4409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4411
    .local v2, numServiceCategories:I
    if-nez v2, :cond_0

    .line 4416
    const/16 v1, 0x5e

    .line 4417
    .local v1, numInts:I
    new-array v3, v1, [I

    .line 4420
    .local v3, response:[I
    const/16 v4, 0x1f

    aput v4, v3, v6

    .line 4424
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4425
    add-int/lit8 v4, v0, 0x0

    div-int/lit8 v5, v0, 0x3

    aput v5, v3, v4

    .line 4426
    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x1

    aput v5, v3, v4

    .line 4427
    add-int/lit8 v4, v0, 0x2

    aput v6, v3, v4

    .line 4424
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 4431
    .end local v0           #i:I
    .end local v1           #numInts:I
    .end local v3           #response:[I
    :cond_0
    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v1, v4, 0x1

    .line 4432
    .restart local v1       #numInts:I
    new-array v3, v1, [I

    .line 4434
    .restart local v3       #response:[I
    aput v2, v3, v6

    .line 4435
    const/4 v0, 0x1

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 4436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v0

    .line 4435
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4440
    :cond_1
    return-object v3
.end method

.method private responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .parameter "p"

    .prologue
    .line 4471
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;-><init>()V

    .line 4473
    .local v0, notification:Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    .line 4474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    .line 4475
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    .line 4476
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    .line 4477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 4478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 4479
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 4480
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 4481
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberType:I

    .line 4482
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPlan:I

    .line 4484
    return-object v0
.end method

.method private responseCdmaInformationRecord(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 4
    .parameter "p"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaInformationRecords;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4459
    .local v2, numberOfInfoRecs:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4461
    .local v3, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 4462
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Landroid/os/Parcel;)V

    .line 4463
    .local v0, InfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4461
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4466
    .end local v0           #InfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :cond_0
    return-object v3
.end method

.method private responseCdmaSms(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "p"

    .prologue
    .line 3922
    invoke-static {p1}, Landroid/telephony/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 3924
    .local v0, sms:Landroid/telephony/SmsMessage;
    return-object v0
.end method

.method private responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .parameter "p"

    .prologue
    .line 4349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4350
    .local v3, num:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4354
    .local v5, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    const-string v7, "gsm.enbr.rat"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 4355
    .local v4, radioType:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gsm.enbr.rat="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4359
    if-eqz v4, :cond_0

    .line 4360
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 4361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4362
    .local v6, rssi:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4363
    .local v2, location:Ljava/lang/String;
    new-instance v0, Landroid/telephony/NeighboringCellInfo;

    invoke-direct {v0, v6, v2, v4}, Landroid/telephony/NeighboringCellInfo;-><init>(ILjava/lang/String;I)V

    .line 4364
    .local v0, cell:Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4360
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4367
    .end local v0           #cell:Landroid/telephony/NeighboringCellInfo;
    .end local v1           #i:I
    .end local v2           #location:Ljava/lang/String;
    .end local v6           #rssi:I
    :cond_0
    return-object v5
.end method

.method private responseCrssNotification(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .parameter "p"

    .prologue
    .line 5806
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppCrssNotification;-><init>()V

    .line 5808
    .local v0, notification:Lcom/android/internal/telephony/gsm/SuppCrssNotification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->code:I

    .line 5809
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->type:I

    .line 5810
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->number:Ljava/lang/String;

    .line 5811
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->alphaid:Ljava/lang/String;

    .line 5812
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->cli_validity:I

    .line 5814
    return-object v0
.end method

.method private responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .parameter "p"

    .prologue
    .line 4186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4187
    .local v3, ver:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4188
    .local v1, num:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "responseDataCallList ver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4191
    .local v2, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 4192
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/RIL;->getDataCallState(Landroid/os/Parcel;I)Lcom/android/internal/telephony/DataCallState;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4195
    :cond_0
    return-object v2
.end method

.method private responseEtwsNotification(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .parameter "p"

    .prologue
    .line 6009
    new-instance v0, Lcom/android/internal/telephony/EtwsNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/EtwsNotification;-><init>()V

    .line 6011
    .local v0, response:Lcom/android/internal/telephony/EtwsNotification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/EtwsNotification;->warningType:I

    .line 6012
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/EtwsNotification;->messageId:I

    .line 6013
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/EtwsNotification;->serialNumber:I

    .line 6014
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/EtwsNotification;->plmnId:Ljava/lang/String;

    .line 6015
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/EtwsNotification;->securityInfo:Ljava/lang/String;

    .line 6017
    return-object v0
.end method

.method private responseGetNitzTime(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .parameter "p"

    .prologue
    .line 3930
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    .line 3933
    .local v3, result:[Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3934
    .local v2, response:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 3935
    .local v0, nitzReceiveTime:J
    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 3936
    const/4 v4, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 3938
    return-object v3
.end method

.method private responseGetPhbMemStorage(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .parameter "p"

    .prologue
    .line 5976
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/PBMemStorage;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/gsm/PBMemStorage;

    move-result-object v0

    .line 5977
    .local v0, response:Lcom/android/internal/telephony/gsm/PBMemStorage;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "responseGetPhbMemStorage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5978
    return-object v0
.end method

.method private responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .parameter "p"

    .prologue
    .line 4371
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 4373
    .local v0, response:[I
    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 4379
    :cond_0
    return-object v0
.end method

.method private responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11
    .parameter "p"

    .prologue
    const/4 v9, 0x1

    .line 4387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4388
    .local v7, num:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 4390
    .local v8, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 4391
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4392
    .local v1, fromId:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4393
    .local v2, toId:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4394
    .local v3, fromScheme:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4395
    .local v4, toScheme:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-ne v10, v9, :cond_0

    move v5, v9

    .line 4397
    .local v5, selected:Z
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 4399
    .local v0, info:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4390
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4395
    .end local v0           #info:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v5           #selected:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 4401
    .end local v1           #fromId:I
    .end local v2           #toId:I
    .end local v3           #fromScheme:I
    .end local v4           #toScheme:I
    :cond_1
    return-object v8
.end method

.method private responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .parameter "p"

    .prologue
    .line 4007
    const/4 v0, 0x0

    .line 4010
    .local v0, data:[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4011
    .local v2, sw1:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4013
    .local v3, sw2:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4020
    .local v1, s:Ljava/lang/String;
    new-instance v4, Lcom/android/internal/telephony/IccIoResult;

    invoke-direct {v4, v2, v3, v1}, Lcom/android/internal/telephony/IccIoResult;-><init>(IILjava/lang/String;)V

    return-object v4
.end method

.method private responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .parameter "p"

    .prologue
    .line 4027
    new-instance v1, Lcom/android/internal/telephony/IccCardStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccCardStatus;-><init>()V

    .line 4028
    .local v1, cardStatus:Lcom/android/internal/telephony/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/IccCardStatus;->setCardState(I)V

    .line 4029
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/IccCardStatus;->setUniversalPinState(I)V

    .line 4030
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 4031
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 4032
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 4033
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4036
    .local v3, numApplications:I
    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    .line 4037
    const/16 v3, 0x8

    .line 4039
    :cond_0
    new-array v4, v3, [Lcom/android/internal/telephony/IccCardApplicationStatus;

    iput-object v4, v1, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    .line 4040
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 4041
    new-instance v0, Lcom/android/internal/telephony/IccCardApplicationStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccCardApplicationStatus;-><init>()V

    .line 4042
    .local v0, appStatus:Lcom/android/internal/telephony/IccCardApplicationStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .line 4043
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .line 4044
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .line 4045
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 4046
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 4047
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin1_replaced:I

    .line 4048
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 4049
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 4050
    iget-object v4, v1, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aput-object v0, v4, v2

    .line 4040
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4052
    .end local v0           #appStatus:Lcom/android/internal/telephony/IccCardApplicationStatus;
    :cond_1
    return-object v1
.end method

.method private responseInts(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .parameter "p"

    .prologue
    .line 3866
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3868
    .local v1, numInts:I
    new-array v2, v1, [I

    .line 3870
    .local v2, response:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3871
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 3870
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3874
    :cond_0
    return-object v2
.end method

.method private responseNetworkInfoWithActs(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11
    .parameter "p"

    .prologue
    .line 5880
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    move-object v7, v8

    check-cast v7, [Ljava/lang/String;

    .line 5883
    .local v7, strings:[Ljava/lang/String;
    array-length v8, v7

    rem-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_0

    .line 5884
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RIL_REQUEST_GET_POL_LIST: invalid response. Got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " strings, expected multible of 5"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5889
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    array-length v8, v7

    div-int/lit8 v8, v8, 0x4

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 5891
    .local v4, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    const/4 v5, 0x0

    .line 5892
    .local v5, strOperName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 5893
    .local v6, strOperNumeric:Ljava/lang/String;
    const/4 v2, 0x0

    .line 5894
    .local v2, nAct:I
    const/4 v3, 0x0

    .line 5896
    .local v3, nIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_5

    .line 5897
    const/4 v5, 0x0

    .line 5898
    const/4 v6, 0x0

    .line 5899
    aget-object v8, v7, v1

    if-eqz v8, :cond_2

    .line 5900
    aget-object v8, v7, v1

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5905
    :goto_1
    add-int/lit8 v8, v1, 0x1

    aget-object v8, v7, v8

    if-eqz v8, :cond_1

    .line 5906
    add-int/lit8 v8, v1, 0x1

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5907
    .local v0, format:I
    packed-switch v0, :pswitch_data_0

    .line 5923
    .end local v0           #format:I
    :cond_1
    :goto_2
    add-int/lit8 v8, v1, 0x3

    aget-object v8, v7, v8

    if-eqz v8, :cond_3

    .line 5924
    add-int/lit8 v8, v1, 0x3

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5928
    :goto_3
    if-eqz v6, :cond_4

    const-string v8, "?????"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 5929
    new-instance v8, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-direct {v8, v5, v6, v2, v3}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5896
    :goto_4
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 5902
    :cond_2
    const-string v8, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "responseNetworkInfoWithActs: no invalid index. i is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5910
    .restart local v0       #format:I
    :pswitch_0
    add-int/lit8 v8, v1, 0x2

    aget-object v5, v7, v8

    .line 5911
    goto :goto_2

    .line 5913
    :pswitch_1
    add-int/lit8 v8, v1, 0x2

    aget-object v8, v7, v8

    if-eqz v8, :cond_1

    .line 5914
    add-int/lit8 v8, v1, 0x2

    aget-object v6, v7, v8

    .line 5915
    add-int/lit8 v8, v1, 0x2

    aget-object v8, v7, v8

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/RIL;->lookupOperatorName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 5926
    .end local v0           #format:I
    :cond_3
    const-string v8, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "responseNetworkInfoWithActs: no invalid Act. i is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 5936
    :cond_4
    const-string v8, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "responseNetworkInfoWithActs: invalid oper. i is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 5940
    :cond_5
    return-object v4

    .line 5907
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private responseOperator(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .parameter "p"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5845
    const/4 v1, 0x0

    .line 5847
    .local v1, response:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 5859
    aget-object v2, v1, v6

    if-eqz v2, :cond_0

    aget-object v2, v1, v6

    const-string/jumbo v3, "uCs2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v7, :cond_0

    .line 5861
    const-string/jumbo v2, "responseOperator handling UCS2 format name"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5863
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "UTF-16"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5869
    :cond_0
    :goto_0
    aget-object v2, v1, v6

    if-eqz v2, :cond_2

    aget-object v2, v1, v6

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, v1, v6

    aget-object v3, v1, v8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5870
    :cond_1
    const-string/jumbo v2, "lookup RIL responseOperator()"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5871
    aget-object v2, v1, v8

    invoke-virtual {p0, v2, v7}, Lcom/android/internal/telephony/RIL;->lookupOperatorName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 5872
    aget-object v2, v1, v8

    invoke-virtual {p0, v2, v6}, Lcom/android/internal/telephony/RIL;->lookupOperatorName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 5875
    :cond_2
    return-object v1

    .line 5864
    :catch_0
    move-exception v0

    .line 5865
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v2, "responseOperatorInfos UnsupportedEncodingException"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 22
    .parameter "p"

    .prologue
    .line 4248
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    move-object/from16 v15, v17

    check-cast v15, [Ljava/lang/String;

    .line 4251
    .local v15, strings:[Ljava/lang/String;
    array-length v0, v15

    move/from16 v17, v0

    rem-int/lit8 v17, v17, 0x5

    if-eqz v17, :cond_0

    .line 4252
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "RIL_REQUEST_QUERY_AVAILABLE_NETWORKS: invalid response. Got "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v15

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " strings, expected multible of 5"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 4258
    :cond_0
    const-string v17, "gsm.cops.lac"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4259
    .local v9, lacStr:Ljava/lang/String;
    const/4 v10, 0x0

    .line 4260
    .local v10, lacValid:Z
    const/4 v8, 0x0

    .line 4262
    .local v8, lacIndex:I
    const-string v17, "RILJ"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "lacStr = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " lacStr.length="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " strings.length="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v15

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4263
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v17

    rem-int/lit8 v17, v17, 0x4

    if-nez v17, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v17

    div-int/lit8 v17, v17, 0x4

    array-length v0, v15

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 4264
    const-string v17, "RILJ"

    const-string v18, "lacValid set to true"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4265
    const/4 v10, 0x1

    .line 4268
    :cond_1
    const-string v17, "gsm.cops.lac"

    const-string v18, ""

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4271
    new-instance v13, Ljava/util/ArrayList;

    array-length v0, v15

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x5

    move/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4273
    .local v13, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_9

    .line 4276
    add-int/lit8 v17, v5, 0x0

    aget-object v17, v15, v17

    if-eqz v17, :cond_2

    add-int/lit8 v17, v5, 0x0

    aget-object v17, v15, v17

    const-string/jumbo v18, "uCs2"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 4278
    const-string/jumbo v17, "responseOperatorInfos handling UCS2 format name"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4281
    add-int/lit8 v17, v5, 0x0

    :try_start_0
    new-instance v18, Ljava/lang/String;

    add-int/lit8 v19, v5, 0x0

    aget-object v19, v15, v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v19

    const-string v20, "UTF-16"

    invoke-direct/range {v18 .. v20}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v18, v15, v17
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4288
    :cond_2
    :goto_1
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_3

    add-int/lit8 v17, v5, 0x0

    aget-object v17, v15, v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 4289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v16

    .line 4290
    .local v16, uiccController:Lcom/android/internal/telephony/uicc/UiccController;
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/IccRecords;

    move-result-object v6

    .line 4291
    .local v6, iccRecords:Lcom/android/internal/telephony/IccRecords;
    const/4 v11, -0x1

    .line 4292
    .local v11, lacValue:I
    const/4 v14, 0x0

    .line 4293
    .local v14, sEons:Ljava/lang/String;
    add-int/lit8 v17, v8, 0x4

    move/from16 v0, v17

    invoke-virtual {v9, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 4294
    .local v7, lac:Ljava/lang/String;
    const-string v17, "RILJ"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "lacIndex="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " lacValue="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " lac="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " plmn numeric="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v5, 0x2

    aget-object v19, v15, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " plmn name"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v5, 0x0

    aget-object v19, v15, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4296
    const-string v17, ""

    move-object/from16 v0, v17

    if-eq v7, v0, :cond_3

    .line 4297
    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-static {v7, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 4298
    add-int/lit8 v8, v8, 0x4

    .line 4299
    const v17, 0xfffe

    move/from16 v0, v17

    if-eq v11, v0, :cond_8

    .line 4300
    add-int/lit8 v17, v5, 0x2

    aget-object v17, v15, v17

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v11, v1}, Lcom/android/internal/telephony/IccRecords;->getEonsIfExist(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v14

    .line 4301
    if-eqz v14, :cond_3

    .line 4302
    add-int/lit8 v17, v5, 0x0

    aput-object v14, v15, v17

    .line 4303
    const-string v17, "RILJ"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "plmn name update to Eons: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v5, 0x0

    aget-object v19, v15, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4312
    .end local v6           #iccRecords:Lcom/android/internal/telephony/IccRecords;
    .end local v7           #lac:Ljava/lang/String;
    .end local v11           #lacValue:I
    .end local v14           #sEons:Ljava/lang/String;
    .end local v16           #uiccController:Lcom/android/internal/telephony/uicc/UiccController;
    :cond_3
    :goto_2
    add-int/lit8 v17, v5, 0x0

    aget-object v17, v15, v17

    if-eqz v17, :cond_5

    add-int/lit8 v17, v5, 0x0

    aget-object v17, v15, v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    add-int/lit8 v17, v5, 0x0

    aget-object v17, v15, v17

    add-int/lit8 v18, v5, 0x2

    aget-object v18, v15, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 4313
    :cond_4
    const-string/jumbo v17, "lookup RIL responseOperatorInfos()"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4314
    add-int/lit8 v17, v5, 0x0

    add-int/lit8 v18, v5, 0x2

    aget-object v18, v15, v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->lookupOperatorName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v17

    .line 4315
    add-int/lit8 v17, v5, 0x1

    add-int/lit8 v18, v5, 0x2

    aget-object v18, v15, v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->lookupOperatorName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v17

    .line 4318
    :cond_5
    const-string v12, "gsm.baseband.capability"

    .line 4319
    .local v12, property_name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/RIL;->mySimId:I

    move/from16 v17, v0

    if-lez v17, :cond_6

    .line 4320
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/RIL;->mySimId:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4323
    :cond_6
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-static {v12, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 4324
    .local v3, basebandCapability:I
    const-string v17, "RILJ"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "property_name="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",basebandCapability="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4325
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v0, v3, :cond_7

    .line 4326
    add-int/lit8 v17, v5, 0x0

    add-int/lit8 v18, v5, 0x0

    aget-object v18, v15, v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, v5, 0x4

    aget-object v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v17

    .line 4327
    add-int/lit8 v17, v5, 0x1

    add-int/lit8 v18, v5, 0x1

    aget-object v18, v15, v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, v5, 0x4

    aget-object v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v17

    .line 4330
    :cond_7
    new-instance v17, Lcom/android/internal/telephony/OperatorInfo;

    add-int/lit8 v18, v5, 0x0

    aget-object v18, v15, v18

    add-int/lit8 v19, v5, 0x1

    aget-object v19, v15, v19

    add-int/lit8 v20, v5, 0x2

    aget-object v20, v15, v20

    add-int/lit8 v21, v5, 0x3

    aget-object v21, v15, v21

    invoke-direct/range {v17 .. v21}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4273
    add-int/lit8 v5, v5, 0x5

    goto/16 :goto_0

    .line 4282
    .end local v3           #basebandCapability:I
    .end local v12           #property_name:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 4283
    .local v4, ex:Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v17, "responseOperatorInfos UnsupportedEncodingException"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4306
    .end local v4           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v6       #iccRecords:Lcom/android/internal/telephony/IccRecords;
    .restart local v7       #lac:Ljava/lang/String;
    .restart local v11       #lacValue:I
    .restart local v14       #sEons:Ljava/lang/String;
    .restart local v16       #uiccController:Lcom/android/internal/telephony/uicc/UiccController;
    :cond_8
    const-string v17, "RILJ"

    const-string v18, "invalid lac ignored"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4338
    .end local v6           #iccRecords:Lcom/android/internal/telephony/IccRecords;
    .end local v7           #lac:Ljava/lang/String;
    .end local v11           #lacValue:I
    .end local v14           #sEons:Ljava/lang/String;
    .end local v16           #uiccController:Lcom/android/internal/telephony/uicc/UiccController;
    :cond_9
    return-object v13
.end method

.method private responsePhbEntries(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .parameter "p"

    .prologue
    .line 5948
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5949
    .local v1, numerOfEntries:I
    new-array v2, v1, [Lcom/android/internal/telephony/PhbEntry;

    .line 5951
    .local v2, response:[Lcom/android/internal/telephony/PhbEntry;
    const-string v3, "RILJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5953
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5954
    new-instance v3, Lcom/android/internal/telephony/PhbEntry;

    invoke-direct {v3}, Lcom/android/internal/telephony/PhbEntry;-><init>()V

    aput-object v3, v2, v0

    .line 5955
    aget-object v3, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/PhbEntry;->type:I

    .line 5956
    aget-object v3, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/PhbEntry;->index:I

    .line 5957
    aget-object v3, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/PhbEntry;->number:Ljava/lang/String;

    .line 5958
    aget-object v3, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/PhbEntry;->ton:I

    .line 5959
    aget-object v3, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/PhbEntry;->alphaId:Ljava/lang/String;

    .line 5953
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5962
    :cond_0
    return-object v2
.end method

.method private responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "p"

    .prologue
    .line 3974
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 3976
    .local v0, response:[B
    return-object v0
.end method

.method private responseReadPhbEntryExt(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .parameter "p"

    .prologue
    .line 5984
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5985
    .local v1, numerOfEntries:I
    new-array v2, v1, [Lcom/android/internal/telephony/gsm/PBEntry;

    .line 5987
    .local v2, response:[Lcom/android/internal/telephony/gsm/PBEntry;
    const-string v3, "RILJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "responseReadPhbEntryExt Number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5989
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5990
    new-instance v3, Lcom/android/internal/telephony/gsm/PBEntry;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/PBEntry;-><init>()V

    aput-object v3, v2, v0

    .line 5991
    aget-object v3, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/PBEntry;->setIndex1(I)V

    .line 5992
    aget-object v3, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/PBEntry;->setNumber(Ljava/lang/String;)V

    .line 5993
    aget-object v3, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/PBEntry;->setType(I)V

    .line 5994
    aget-object v3, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/PBEntry;->setText(Ljava/lang/String;)V

    .line 5995
    aget-object v3, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/PBEntry;->setHidden(I)V

    .line 5997
    aget-object v3, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/PBEntry;->setGroup(Ljava/lang/String;)V

    .line 5998
    aget-object v3, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/PBEntry;->setAdnumber(Ljava/lang/String;)V

    .line 5999
    aget-object v3, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/PBEntry;->setAdtype(I)V

    .line 6000
    aget-object v3, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/PBEntry;->setSecondtext(Ljava/lang/String;)V

    .line 6001
    aget-object v3, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/PBEntry;->setEmail(Ljava/lang/String;)V

    .line 6002
    const-string v3, "RILJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "responseReadPhbEntryExt["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/PBEntry;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5989
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 6005
    :cond_0
    return-object v2
.end method

.method private responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .parameter "p"

    .prologue
    .line 3984
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3985
    .local v2, messageRef:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3986
    .local v0, ackPDU:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3988
    .local v1, errorCode:I
    new-instance v3, Lcom/android/internal/telephony/SmsResponse;

    invoke-direct {v3, v2, v0, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    .line 3990
    .local v3, response:Lcom/android/internal/telephony/SmsResponse;
    return-object v3
.end method

.method private responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .parameter "p"

    .prologue
    const/4 v8, 0x5

    .line 4200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 4201
    .local v5, ver:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4206
    .local v4, num:I
    if-ge v5, v8, :cond_4

    .line 4207
    new-instance v1, Lcom/android/internal/telephony/DataCallState;

    invoke-direct {v1}, Lcom/android/internal/telephony/DataCallState;-><init>()V

    .line 4208
    .local v1, dataCall:Lcom/android/internal/telephony/DataCallState;
    iput v5, v1, Lcom/android/internal/telephony/DataCallState;->version:I

    .line 4209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 4210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 4211
    iget-object v6, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4212
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "RIL_REQUEST_SETUP_DATA_CALL response, no ifname"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4215
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4216
    .local v0, addresses:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4217
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .line 4219
    :cond_1
    const/4 v6, 0x4

    if-lt v4, v6, :cond_2

    .line 4220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4221
    .local v2, dnses:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "responseSetupDataCall got dnses="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4222
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 4223
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    .line 4226
    .end local v2           #dnses:Ljava/lang/String;
    :cond_2
    if-lt v4, v8, :cond_3

    .line 4227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4228
    .local v3, gateways:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "responseSetupDataCall got gateways="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4229
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 4230
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    .line 4242
    .end local v0           #addresses:Ljava/lang/String;
    .end local v3           #gateways:Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v1

    .line 4234
    .end local v1           #dataCall:Lcom/android/internal/telephony/DataCallState;
    :cond_4
    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    .line 4235
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RIL_REQUEST_SETUP_DATA_CALL response expecting 1 RIL_Data_Call_response_v5 got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4239
    :cond_5
    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/RIL;->getDataCallState(Landroid/os/Parcel;I)Lcom/android/internal/telephony/DataCallState;

    move-result-object v1

    .restart local v1       #dataCall:Lcom/android/internal/telephony/DataCallState;
    goto :goto_0
.end method

.method private responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "p"

    .prologue
    .line 4445
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0, p1}, Landroid/telephony/SignalStrength;-><init>(Landroid/os/Parcel;)V

    .line 4446
    .local v0, signalStrength:Landroid/telephony/SignalStrength;
    return-object v0
.end method

.method private responseSimRefresh(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .parameter "p"

    .prologue
    .line 4057
    new-instance v1, Lcom/android/internal/telephony/IccRefreshResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccRefreshResponse;-><init>()V

    .line 4059
    .local v1, response:Lcom/android/internal/telephony/IccRefreshResponse;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4060
    .local v0, numInts:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    .line 4061
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/IccRefreshResponse;->efId:I

    .line 4062
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/IccRefreshResponse;->aid:Ljava/lang/String;

    .line 4063
    return-object v1
.end method

.method private responseSimSmsMemoryStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .parameter "p"

    .prologue
    .line 5968
    new-instance v0, Landroid/telephony/SmsMemoryStatus;

    invoke-direct {v0}, Landroid/telephony/SmsMemoryStatus;-><init>()V

    .line 5969
    .local v0, response:Landroid/telephony/SmsMemoryStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SmsMemoryStatus;->mUsed:I

    .line 5970
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SmsMemoryStatus;->mTotal:I

    .line 5972
    return-object v0
.end method

.method private responseSmsParams(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .parameter "p"

    .prologue
    .line 3995
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3996
    .local v1, format:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3997
    .local v3, vp:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3998
    .local v2, pid:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4000
    .local v0, dcs:I
    new-instance v4, Landroid/telephony/SmsParameters;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/telephony/SmsParameters;-><init>(IIII)V

    return-object v4
.end method

.method private responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "p"

    .prologue
    .line 3945
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3947
    .local v0, response:Ljava/lang/String;
    return-object v0
.end method

.method private responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "p"

    .prologue
    .line 3955
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 3966
    .local v0, response:[Ljava/lang/String;
    return-object v0
.end method

.method private responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .parameter "p"

    .prologue
    .line 3908
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 3910
    .local v0, notification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 3911
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 3912
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 3913
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    .line 3914
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 3916
    return-object v0
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 1
    .parameter "request"

    .prologue
    .line 4770
    sparse-switch p0, :sswitch_data_0

    .line 4842
    const-string v0, "<unknown reponse>"

    :goto_0
    return-object v0

    .line 4771
    :sswitch_0
    const-string v0, "UNSOL_RESPONSE_RADIO_STATE_CHANGED"

    goto :goto_0

    .line 4772
    :sswitch_1
    const-string v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    goto :goto_0

    .line 4773
    :sswitch_2
    const-string v0, "UNSOL_RESPONSE_VOICE_NETWORK_STATE_CHANGED"

    goto :goto_0

    .line 4774
    :sswitch_3
    const-string v0, "UNSOL_RESPONSE_NEW_SMS"

    goto :goto_0

    .line 4775
    :sswitch_4
    const-string v0, "UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT"

    goto :goto_0

    .line 4776
    :sswitch_5
    const-string v0, "UNSOL_RESPONSE_NEW_SMS_ON_SIM"

    goto :goto_0

    .line 4777
    :sswitch_6
    const-string v0, "UNSOL_ON_USSD"

    goto :goto_0

    .line 4778
    :sswitch_7
    const-string v0, "UNSOL_ON_USSD_REQUEST"

    goto :goto_0

    .line 4779
    :sswitch_8
    const-string v0, "UNSOL_NITZ_TIME_RECEIVED"

    goto :goto_0

    .line 4780
    :sswitch_9
    const-string v0, "UNSOL_SIGNAL_STRENGTH"

    goto :goto_0

    .line 4781
    :sswitch_a
    const-string v0, "UNSOL_DATA_CALL_LIST_CHANGED"

    goto :goto_0

    .line 4782
    :sswitch_b
    const-string v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    goto :goto_0

    .line 4783
    :sswitch_c
    const-string v0, "UNSOL_STK_SESSION_END"

    goto :goto_0

    .line 4784
    :sswitch_d
    const-string v0, "UNSOL_STK_PROACTIVE_COMMAND"

    goto :goto_0

    .line 4785
    :sswitch_e
    const-string v0, "UNSOL_STK_EVENT_NOTIFY"

    goto :goto_0

    .line 4786
    :sswitch_f
    const-string v0, "UNSOL_STK_CALL_SETUP"

    goto :goto_0

    .line 4787
    :sswitch_10
    const-string v0, "UNSOL_SIM_SMS_STORAGE_FULL"

    goto :goto_0

    .line 4788
    :sswitch_11
    const-string v0, "UNSOL_SIM_REFRESH"

    goto :goto_0

    .line 4789
    :sswitch_12
    const-string v0, "UNSOL_CALL_RING"

    goto :goto_0

    .line 4790
    :sswitch_13
    const-string v0, "UNSOL_RESPONSE_SIM_STATUS_CHANGED"

    goto :goto_0

    .line 4791
    :sswitch_14
    const-string v0, "UNSOL_RESPONSE_CDMA_NEW_SMS"

    goto :goto_0

    .line 4792
    :sswitch_15
    const-string v0, "UNSOL_RESPONSE_NEW_BROADCAST_SMS"

    goto :goto_0

    .line 4793
    :sswitch_16
    const-string v0, "UNSOL_CDMA_RUIM_SMS_STORAGE_FULL"

    goto :goto_0

    .line 4794
    :sswitch_17
    const-string v0, "UNSOL_RESTRICTED_STATE_CHANGED"

    goto :goto_0

    .line 4795
    :sswitch_18
    const-string v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    goto :goto_0

    .line 4796
    :sswitch_19
    const-string v0, "UNSOL_CDMA_CALL_WAITING"

    goto :goto_0

    .line 4797
    :sswitch_1a
    const-string v0, "UNSOL_CDMA_OTA_PROVISION_STATUS"

    goto :goto_0

    .line 4798
    :sswitch_1b
    const-string v0, "UNSOL_CDMA_INFO_REC"

    goto :goto_0

    .line 4799
    :sswitch_1c
    const-string v0, "UNSOL_OEM_HOOK_RAW"

    goto :goto_0

    .line 4800
    :sswitch_1d
    const-string v0, "UNSOL_RINGBACK_TONG"

    goto :goto_0

    .line 4801
    :sswitch_1e
    const-string v0, "UNSOL_RESEND_INCALL_MUTE"

    goto :goto_0

    .line 4802
    :sswitch_1f
    const-string v0, "CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    goto :goto_0

    .line 4803
    :sswitch_20
    const-string v0, "UNSOL_CDMA_PRL_CHANGED"

    goto :goto_0

    .line 4804
    :sswitch_21
    const-string v0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    goto :goto_0

    .line 4805
    :sswitch_22
    const-string v0, "UNSOL_RIL_CONNECTED"

    goto :goto_0

    .line 4806
    :sswitch_23
    const-string v0, "UNSOL_VOICE_RADIO_TECH_CHANGED"

    goto :goto_0

    .line 4809
    :sswitch_24
    const-string v0, "UNSOL_NEIGHBORING_CELL_INFO"

    goto :goto_0

    .line 4810
    :sswitch_25
    const-string v0, "UNSOL_NETWORK_INFO"

    goto :goto_0

    .line 4811
    :sswitch_26
    const-string v0, "UNSOL_CALL_FORWARDING"

    goto :goto_0

    .line 4812
    :sswitch_27
    const-string v0, "UNSOL_CALL_PROGRESS_INFO"

    goto :goto_0

    .line 4813
    :sswitch_28
    const-string v0, "UNSOL_PHB_READY_NOTIFICATION"

    goto :goto_0

    .line 4814
    :sswitch_29
    const-string v0, "UNSOL_SIM_INSERTED_STATUS"

    goto :goto_0

    .line 4815
    :sswitch_2a
    const-string v0, "UNSOL_SIM_MISSING"

    goto/16 :goto_0

    .line 4816
    :sswitch_2b
    const-string v0, "UNSOL_VIRTUAL_SIM_ON"

    goto/16 :goto_0

    .line 4817
    :sswitch_2c
    const-string v0, "UNSOL_VIRTUAL_SIM_ON_OFF"

    goto/16 :goto_0

    .line 4818
    :sswitch_2d
    const-string v0, "UNSOL_SIM_RECOVERY"

    goto/16 :goto_0

    .line 4819
    :sswitch_2e
    const-string v0, "UNSOL_SPEECH_INFO"

    goto/16 :goto_0

    .line 4820
    :sswitch_2f
    const-string v0, "UNSOL_RADIO_TEMPORARILY_UNAVAILABLE"

    goto/16 :goto_0

    .line 4821
    :sswitch_30
    const-string v0, "RIL_UNSOL_ME_SMS_STORAGE_FULL"

    goto/16 :goto_0

    .line 4822
    :sswitch_31
    const-string v0, "RIL_UNSOL_SMS_READY_NOTIFICATION"

    goto/16 :goto_0

    .line 4824
    :sswitch_32
    const-string v0, "UNSOL_VT_STATUS_INFO"

    goto/16 :goto_0

    .line 4825
    :sswitch_33
    const-string v0, "UNSOL_VT_RING_INFO"

    goto/16 :goto_0

    .line 4827
    :sswitch_34
    const-string v0, "RIL_UNSOL_SCRI_RESULT"

    goto/16 :goto_0

    .line 4828
    :sswitch_35
    const-string v0, "UNSOL_INCOMING_CALL_INDICATION"

    goto/16 :goto_0

    .line 4829
    :sswitch_36
    const-string v0, "RIL_UNSOL_GPRS_DETACH"

    goto/16 :goto_0

    .line 4831
    :sswitch_37
    const-string v0, "RIL_UNSOL_EF_CSP_PLMN_MODE_BIT"

    goto/16 :goto_0

    .line 4833
    :sswitch_38
    const-string v0, "UNSOL_IMEI_LOCK"

    goto/16 :goto_0

    .line 4834
    :sswitch_39
    const-string v0, "UNSOL_ACMT_INFO"

    goto/16 :goto_0

    .line 4835
    :sswitch_3a
    const-string v0, "UNSOL_RESPONSE_PS_NETWORK_STATE_CHANGED"

    goto/16 :goto_0

    .line 4836
    :sswitch_3b
    const-string v0, "UNSOL_RESPONSE_MMRR_STATUS_CHANGED"

    goto/16 :goto_0

    .line 4837
    :sswitch_3c
    const-string v0, "UNSOL_SIM_PLUG_OUT"

    goto/16 :goto_0

    .line 4838
    :sswitch_3d
    const-string v0, "UNSOL_SIM_PLUG_IN"

    goto/16 :goto_0

    .line 4840
    :sswitch_3e
    const-string v0, "RIL_UNSOL_RESPONSE_ETWS_NOTIFICATION"

    goto/16 :goto_0

    .line 4770
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_6
        0x3ef -> :sswitch_7
        0x3f0 -> :sswitch_8
        0x3f1 -> :sswitch_9
        0x3f2 -> :sswitch_a
        0x3f3 -> :sswitch_b
        0x3f4 -> :sswitch_c
        0x3f5 -> :sswitch_d
        0x3f6 -> :sswitch_e
        0x3f7 -> :sswitch_f
        0x3f8 -> :sswitch_10
        0x3f9 -> :sswitch_11
        0x3fa -> :sswitch_12
        0x3fb -> :sswitch_13
        0x3fc -> :sswitch_14
        0x3fd -> :sswitch_15
        0x3fe -> :sswitch_16
        0x3ff -> :sswitch_17
        0x400 -> :sswitch_18
        0x401 -> :sswitch_19
        0x402 -> :sswitch_1a
        0x403 -> :sswitch_1b
        0x404 -> :sswitch_1c
        0x405 -> :sswitch_1d
        0x406 -> :sswitch_1e
        0x407 -> :sswitch_1f
        0x408 -> :sswitch_20
        0x409 -> :sswitch_21
        0x40a -> :sswitch_22
        0x40b -> :sswitch_23
        0xbb8 -> :sswitch_24
        0xbb9 -> :sswitch_25
        0xbba -> :sswitch_26
        0xbbc -> :sswitch_27
        0xbbd -> :sswitch_28
        0xbbe -> :sswitch_2e
        0xbbf -> :sswitch_29
        0xbc0 -> :sswitch_2f
        0xbc1 -> :sswitch_30
        0xbc2 -> :sswitch_31
        0xbc3 -> :sswitch_34
        0xbc4 -> :sswitch_32
        0xbc5 -> :sswitch_33
        0xbc6 -> :sswitch_35
        0xbc7 -> :sswitch_2a
        0xbc8 -> :sswitch_36
        0xbca -> :sswitch_2d
        0xbcb -> :sswitch_2b
        0xbcc -> :sswitch_2c
        0xbce -> :sswitch_3a
        0xbcf -> :sswitch_39
        0xbd0 -> :sswitch_37
        0xbd1 -> :sswitch_38
        0xbd2 -> :sswitch_3b
        0xbd3 -> :sswitch_3c
        0xbd4 -> :sswitch_3d
        0xbd5 -> :sswitch_3e
    .end sparse-switch
.end method

.method private responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "p"

    .prologue
    .line 3880
    const/4 v0, 0x0

    return-object v0
.end method

.method private retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 15
    .parameter "req"
    .parameter "ret"

    .prologue
    .line 3022
    if-nez p2, :cond_0

    const-string v10, ""

    .line 3081
    .end local p2
    :goto_0
    return-object v10

    .line 3023
    .restart local p2
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 3037
    move-object/from16 v0, p2

    instance-of v13, v0, [I

    if-eqz v13, :cond_2

    .line 3038
    check-cast p2, [I

    .end local p2
    move-object/from16 v8, p2

    check-cast v8, [I

    .line 3039
    .local v8, intArray:[I
    array-length v9, v8

    .line 3040
    .local v9, length:I
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "{"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3041
    .local v11, sb:Ljava/lang/StringBuilder;
    if-lez v9, :cond_1

    .line 3042
    const/4 v5, 0x0

    .line 3043
    .local v5, i:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #i:I
    .local v6, i:I
    aget v13, v8, v5

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3044
    :goto_1
    if-ge v6, v9, :cond_1

    .line 3045
    const-string v13, ", "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v5, v6, 0x1

    .end local v6           #i:I
    .restart local v5       #i:I
    aget v14, v8, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v6, v5

    .end local v5           #i:I
    .restart local v6       #i:I
    goto :goto_1

    .line 3030
    .end local v6           #i:I
    .end local v8           #intArray:[I
    .end local v9           #length:I
    .end local v11           #sb:Ljava/lang/StringBuilder;
    .restart local p2
    :sswitch_0
    const-string v10, ""

    goto :goto_0

    .line 3048
    .end local p2
    .restart local v8       #intArray:[I
    .restart local v9       #length:I
    .restart local v11       #sb:Ljava/lang/StringBuilder;
    :cond_1
    const-string/jumbo v13, "}"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3049
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3050
    .local v10, s:Ljava/lang/String;
    goto :goto_0

    .end local v8           #intArray:[I
    .end local v9           #length:I
    .end local v10           #s:Ljava/lang/String;
    .end local v11           #sb:Ljava/lang/StringBuilder;
    .restart local p2
    :cond_2
    move-object/from16 v0, p2

    instance-of v13, v0, [Ljava/lang/String;

    if-eqz v13, :cond_4

    .line 3051
    check-cast p2, [Ljava/lang/String;

    .end local p2
    move-object/from16 v12, p2

    check-cast v12, [Ljava/lang/String;

    .line 3052
    .local v12, strings:[Ljava/lang/String;
    array-length v9, v12

    .line 3053
    .restart local v9       #length:I
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "{"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3054
    .restart local v11       #sb:Ljava/lang/StringBuilder;
    if-lez v9, :cond_3

    .line 3055
    const/4 v5, 0x0

    .line 3056
    .restart local v5       #i:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #i:I
    .restart local v6       #i:I
    aget-object v13, v12, v5

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3057
    :goto_2
    if-ge v6, v9, :cond_3

    .line 3058
    const-string v13, ", "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v5, v6, 0x1

    .end local v6           #i:I
    .restart local v5       #i:I
    aget-object v14, v12, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v5

    .end local v5           #i:I
    .restart local v6       #i:I
    goto :goto_2

    .line 3061
    .end local v6           #i:I
    :cond_3
    const-string/jumbo v13, "}"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3062
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3063
    .restart local v10       #s:Ljava/lang/String;
    goto :goto_0

    .end local v9           #length:I
    .end local v10           #s:Ljava/lang/String;
    .end local v11           #sb:Ljava/lang/StringBuilder;
    .end local v12           #strings:[Ljava/lang/String;
    .restart local p2
    :cond_4
    const/16 v13, 0x9

    move/from16 v0, p1

    if-ne v0, v13, :cond_6

    move-object/from16 v1, p2

    .line 3064
    check-cast v1, Ljava/util/ArrayList;

    .line 3065
    .local v1, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3066
    .restart local v11       #sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DriverCall;

    .line 3067
    .local v4, dc:Lcom/android/internal/telephony/DriverCall;
    const-string v13, "["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3069
    .end local v4           #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_5
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3070
    .restart local v10       #s:Ljava/lang/String;
    goto/16 :goto_0

    .end local v1           #calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #s:Ljava/lang/String;
    .end local v11           #sb:Ljava/lang/StringBuilder;
    :cond_6
    const/16 v13, 0x4b

    move/from16 v0, p1

    if-ne v0, v13, :cond_8

    move-object/from16 v3, p2

    .line 3072
    check-cast v3, Ljava/util/ArrayList;

    .line 3073
    .local v3, cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3074
    .restart local v11       #sb:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NeighboringCellInfo;

    .line 3075
    .local v2, cell:Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 3077
    .end local v2           #cell:Landroid/telephony/NeighboringCellInfo;
    :cond_7
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3078
    .restart local v10       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 3079
    .end local v3           #cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #s:Ljava/lang/String;
    .end local v11           #sb:Ljava/lang/StringBuilder;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 3023
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method private riljLog(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 4848
    const-string v0, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " RIL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/RIL;->mySimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4849
    return-void
.end method

.method private riljLogv(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 4852
    const-string v0, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " RIL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/RIL;->mySimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4853
    return-void
.end method

.method private send(Lcom/android/internal/telephony/RILRequest;)V
    .locals 5
    .parameter "rr"

    .prologue
    const/4 v2, 0x1

    .line 2632
    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LAST_CALL_FAIL_CAUSE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 2633
    .local v1, show:Z
    :goto_0
    if-eqz v1, :cond_0

    const-string v3, "###send start"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2635
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    if-nez v3, :cond_4

    .line 2636
    if-eqz v1, :cond_1

    const-string v3, "###mSocket == null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2637
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 2638
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 2651
    :cond_2
    :goto_1
    return-void

    .line 2632
    .end local v1           #show:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 2642
    .restart local v1       #show:Z
    :cond_4
    if-eqz v1, :cond_5

    const-string v3, "###send 1"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2643
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    invoke-virtual {v3, v2, p1}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2644
    .local v0, msg:Landroid/os/Message;
    if-eqz v1, :cond_6

    const-string v2, "###send 2"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2646
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->acquireWakeLock()V

    .line 2647
    if-eqz v1, :cond_7

    const-string v2, "###send 3"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2649
    :cond_7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2650
    if-eqz v1, :cond_2

    const-string v2, "###send end"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendScreenState(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const/4 v1, 0x1

    .line 2501
    iput-boolean p1, p0, Lcom/android/internal/telephony/RIL;->isScreenOn:Z

    .line 2503
    const/16 v2, 0x3d

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2504
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2505
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2510
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2511
    return-void

    .line 2505
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private switchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    .locals 3
    .parameter "newState"

    .prologue
    const/4 v2, 0x0

    .line 2557
    sget-boolean v0, Lcom/android/internal/telephony/RIL;->mInitialRadioStateChange:Z

    if-eqz v0, :cond_4

    .line 2561
    iget-boolean v0, p0, Lcom/android/internal/telephony/RIL;->mIs3GSwitch:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/RIL;->mySimId:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/RIL;->mIs3GSwitch:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/RIL;->mySimId:I

    if-nez v0, :cond_3

    .line 2562
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2569
    const-string v0, "RILJ"

    const-string v1, "Radio ON @ init; reset to OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/RIL;->setRadioMode(ILandroid/os/Message;)V

    .line 2579
    :goto_0
    sput-boolean v2, Lcom/android/internal/telephony/RIL;->mInitialRadioStateChange:Z

    .line 2581
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->disableVTCapability()V

    .line 2591
    :goto_1
    return-void

    .line 2576
    :cond_2
    const-string v0, "RILJ"

    const-string v1, "Radio OFF @ init 3G phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_0

    .line 2584
    :cond_3
    const-string v0, "RILJ"

    const-string v1, "Radio OFF @ init 2G phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_1

    .line 2588
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_1
.end method

.method private translateStatus(I)I
    .locals 2
    .parameter "status"

    .prologue
    const/4 v0, 0x1

    .line 1659
    and-int/lit8 v1, p1, 0x7

    packed-switch v1, :pswitch_data_0

    .line 1671
    :goto_0
    :pswitch_0
    return v0

    .line 1663
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1665
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1667
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 1659
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private unsljLog(I)V
    .locals 2
    .parameter "response"

    .prologue
    .line 4856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/RIL;->mySimId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4857
    return-void
.end method

.method private unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .parameter "response"
    .parameter "more"

    .prologue
    .line 4860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL RIL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4861
    return-void
.end method

.method private unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .parameter "response"
    .parameter "ret"

    .prologue
    .line 4864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL RIL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4865
    return-void
.end method

.method private unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .parameter "response"
    .parameter "ret"

    .prologue
    .line 4868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL RIL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 4869
    return-void
.end method


# virtual methods
.method public ReadPhbEntry(IIILandroid/os/Message;)V
    .locals 3
    .parameter "type"
    .parameter "bIndex"
    .parameter "eIndex"
    .parameter "response"

    .prologue
    .line 5657
    const/16 v1, 0x7df

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5659
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5660
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5661
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5662
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " begin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5667
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5668
    return-void
.end method

.method public acceptCall(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1279
    const/16 v1, 0x28

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1282
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1284
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1285
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "success"
    .parameter "ackPdu"
    .parameter "result"

    .prologue
    .line 1842
    const/16 v1, 0x6a

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1845
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1846
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1847
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1852
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1853
    return-void

    .line 1846
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 3
    .parameter "success"
    .parameter "cause"
    .parameter "result"

    .prologue
    .line 1826
    const/16 v1, 0x58

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1829
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1831
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1836
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1837
    return-void

    .line 1829
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 3
    .parameter "success"
    .parameter "cause"
    .parameter "result"

    .prologue
    .line 1811
    const/16 v1, 0x25

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1814
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1815
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1816
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1821
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1822
    return-void

    .line 1815
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 2154
    const/16 v1, 0x1e

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2157
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2160
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2161
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 1029
    const/16 v1, 0x2c

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1031
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1033
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1034
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1035
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1036
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1038
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1039
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "newCfm"
    .parameter "result"

    .prologue
    .line 5151
    const/16 v1, 0x2c

    invoke-static {v1, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5153
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5155
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5156
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5157
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5158
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5159
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5160
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5161
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 987
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 988
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 1008
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1009
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 1015
    const/4 v1, 0x7

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1017
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1019
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1020
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1021
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1022
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1024
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1025
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 994
    const/4 v1, 0x6

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 996
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 998
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 999
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1000
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1001
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1003
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1004
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1238
    const/16 v1, 0x10

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1241
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1243
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1244
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 3
    .parameter "cid"
    .parameter "reason"
    .parameter "result"

    .prologue
    .line 1735
    const/16 v1, 0x29

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1738
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1739
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1740
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1745
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1746
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 3
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1566
    const/16 v1, 0x61

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1569
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1570
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1578
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1579
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 3
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1550
    const/16 v1, 0x40

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1553
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1554
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1562
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1563
    return-void
.end method

.method public deleteUPBEntry(IIILandroid/os/Message;)V
    .locals 3
    .parameter "entryType"
    .parameter "adnIndex"
    .parameter "entryIndex"
    .parameter "response"

    .prologue
    .line 6262
    const/16 v1, 0x7fd

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6263
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6264
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6265
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6266
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6268
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6269
    return-void
.end method

.method public detectSimMissing(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 6341
    const/16 v1, 0x806

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6344
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6346
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6347
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 1078
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 1079
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 3
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 1083
    const/16 v1, 0xa

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1085
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1086
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1087
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1089
    if-nez p3, :cond_0

    .line 1090
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1098
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1100
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1101
    return-void

    .line 1092
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1093
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1094
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1095
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method

.method public doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "strRand"
    .parameter "response"

    .prologue
    .line 5699
    const/16 v1, 0x7ee

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5702
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5705
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5706
    return-void
.end method

.method public doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "strRand"
    .parameter "strAutn"
    .parameter "response"

    .prologue
    .line 5710
    const/16 v1, 0x7ef

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5712
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5713
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5714
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5717
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5718
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 5126
    const-string v3, "RIL:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mSocket="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mSenderThread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mSender="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mReceiverThread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mReceiver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mWakeLock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mWakeLockTimeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5134
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 5135
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mRequestMessagesPending="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mRequestMessagesWaiting="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5137
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5138
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mRequestList count="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5139
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5140
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RILRequest;

    .line 5141
    .local v2, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5143
    .end local v2           #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mLastNITZTimeInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mTestingEmergencyCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5146
    return-void

    .line 5143
    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "entryType"
    .parameter "adnIndex"
    .parameter "entryIndex"
    .parameter "strVal"
    .parameter "tonForNum"
    .parameter "response"

    .prologue
    .line 6241
    const/16 v1, 0x7fc

    invoke-static {v1, p6}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6242
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez p1, :cond_1

    .line 6243
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6247
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6248
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6249
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6250
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6252
    if-nez p1, :cond_0

    .line 6253
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6256
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6257
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6259
    return-void

    .line 6245
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 3
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 5165
    const/16 v1, 0x7eb

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5167
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5168
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5169
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5171
    if-nez p3, :cond_0

    .line 5172
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5180
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5182
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5183
    return-void

    .line 5174
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5175
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5176
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5177
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 5099
    const/16 v1, 0x63

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5101
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5103
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5104
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1299
    const/16 v1, 0x48

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1302
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1304
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1305
    return-void
.end method

.method public forceReleaseCall(ILandroid/os/Message;)V
    .locals 7
    .parameter "index"
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 6136
    const/16 v4, 0x7f3

    invoke-static {v4, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 6139
    .local v1, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v4, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6140
    iget-object v4, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6147
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 6149
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[dwj] forceReleaseCall index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p2, :cond_1

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6151
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 6152
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RIL$TimerWithIndex;

    .line 6153
    .local v2, tt:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL$TimerWithIndex;->getCallIndex()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 6155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dwj] It has matched and cancel the index call +"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6156
    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL$TimerWithIndex;->cancel()V

    .line 6157
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6161
    .end local v2           #tt:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6163
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6164
    return-void

    .line 6149
    .end local v0           #i:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 6151
    .restart local v0       #i:I
    .restart local v2       #tt:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6161
    .end local v0           #i:I
    .end local v2           #tt:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public get3GCapabilitySIM(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 6194
    const/16 v1, 0x7f6

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6195
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6196
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6197
    return-void
.end method

.method public getAccumulatedCallMeter(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 5314
    const/16 v1, 0x7d5

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5317
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5319
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5320
    return-void
.end method

.method public getAccumulatedCallMeterMaximum(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 5324
    const/16 v1, 0x7d6

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5327
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5329
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5330
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1984
    const/16 v1, 0x30

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1988
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget v1, p0, Lcom/android/internal/telephony/RIL;->getAvailableNetworkRequests:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/RIL;->getAvailableNetworkRequests:I

    .line 1989
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/RIL;->getAvailableNetworkRequests:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1991
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1992
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 2058
    const/16 v1, 0x33

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2061
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2063
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2064
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 4952
    const/16 v1, 0x5f

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4954
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4956
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4957
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1893
    const/16 v1, 0x1f

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1896
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1898
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1899
    return-void
.end method

.method public getCOLP(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 5469
    const/16 v1, 0x7d1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5472
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5474
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5475
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 5501
    const/16 v1, 0x7d3

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5504
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5506
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5507
    return-void
.end method

.method public getCalibrationData(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 6382
    const/16 v1, 0x807

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6384
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> :::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6386
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6387
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 5066
    const/16 v1, 0x5c

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5068
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5069
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 5014
    const/16 v1, 0x68

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5017
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5019
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5020
    return-void
.end method

.method public getCurrentCallMeter(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 5304
    const/16 v1, 0x7d4

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5307
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5309
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5310
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1055
    const/16 v1, 0x9

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1057
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1059
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1060
    return-void
.end method

.method public getCurrentPOLList(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 6214
    const/16 v1, 0x7f9

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6215
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6216
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6217
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1069
    const/16 v1, 0x39

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1071
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1073
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1074
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1394
    const/16 v1, 0x15

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1397
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1399
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1400
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 4876
    const/16 v1, 0x62

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4878
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4880
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4881
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 2448
    const/16 v1, 0x59

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2450
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2452
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2453
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1124
    const/16 v1, 0x26

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1126
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1128
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1129
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1133
    const/16 v1, 0x27

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1135
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1137
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1138
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1105
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 1106
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 1110
    const/16 v1, 0xb

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1112
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1113
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> getIMSI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1119
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1120
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 896
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 898
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 900
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 901
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1309
    const/16 v1, 0x12

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1312
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1314
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1315
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1330
    const/16 v1, 0x38

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1333
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1335
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1336
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1322
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getLastDataCallFailCause(Landroid/os/Message;)V

    .line 1323
    return-void
.end method

.method public getMobileRevisionAndIMEI(ILandroid/os/Message;)V
    .locals 3
    .parameter "type"
    .parameter "result"

    .prologue
    .line 5455
    const/16 v1, 0x7e2

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5458
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5460
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5461
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5463
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5464
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1354
    const/16 v1, 0x36

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1357
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1359
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1360
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 2368
    const/16 v1, 0x4b

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2371
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2373
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2374
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1973
    const/16 v1, 0x2d

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1977
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1979
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1980
    return-void
.end method

.method public getNitzTime(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1374
    const/16 v1, 0x92

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1377
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1379
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1380
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1404
    const/16 v1, 0x16

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1407
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1409
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1410
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .parameter "result"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1064
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getDataCallList(Landroid/os/Message;)V

    .line 1065
    return-void
.end method

.method public getPOLCapabilty(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 6208
    const/16 v1, 0x7f8

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6209
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6210
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6211
    return-void
.end method

.method public getPhoneBookMemStorage(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 6407
    const/16 v1, 0x809

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6409
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> :::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6411
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6412
    return-void
.end method

.method public getPhoneBookStringsLength(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 6395
    const/16 v1, 0x808

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6397
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> :::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6399
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6400
    return-void
.end method

.method public getPpuAndCurrency(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 5334
    const/16 v1, 0x7d7

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5337
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5339
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5340
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 2356
    const/16 v1, 0x4a

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2359
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2361
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2362
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1258
    const/16 v1, 0x53

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1260
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1261
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1364
    const/16 v1, 0x13

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1367
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1369
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1370
    return-void
.end method

.method public getSimInsertedStatus()I
    .locals 1

    .prologue
    .line 5801
    sget v0, Lcom/android/internal/telephony/RIL;->mSimInsertedStatus:I

    return v0
.end method

.method public getSimRecoveryOn(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 6363
    const/16 v1, 0x804

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6364
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6365
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6366
    return-void
.end method

.method public getSmsParameters(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 6469
    const/16 v1, 0x80d

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6471
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6473
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6474
    return-void
.end method

.method public getSmsSimMemoryStatus(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 5613
    const/16 v1, 0x7f2

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5615
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5617
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5618
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 2398
    const/16 v1, 0x64

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2400
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2402
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2403
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 871
    const/16 v1, 0x6c

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 873
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 875
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 876
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1384
    const/16 v1, 0x14

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1387
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1389
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1390
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZILandroid/os/Message;)V
    .locals 6
    .parameter "accept"
    .parameter "resCode"
    .parameter "response"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2294
    const/16 v4, 0x47

    invoke-static {v4, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2298
    .local v1, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2300
    new-array v0, v2, [I

    .line 2302
    .local v0, param:[I
    const/16 v4, 0x21

    if-eq p2, v4, :cond_0

    const/16 v4, 0x20

    if-ne p2, v4, :cond_1

    .line 2303
    :cond_0
    aput p2, v0, v3

    .line 2308
    :goto_0
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2309
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2310
    return-void

    .line 2305
    :cond_1
    if-eqz p1, :cond_2

    :goto_1
    aput v2, v0, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public hangupAll(Landroid/os/Message;)V
    .locals 9
    .parameter "result"

    .prologue
    .line 5230
    const/16 v5, 0x7d0

    invoke-static {v5, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 5233
    .local v2, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5240
    const/4 v0, 0x1

    .line 5241
    .local v0, gsmIndex:I
    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 5243
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[dwj]add the index of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " call for timer triggered, which is in hangupAll"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5247
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 5248
    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RIL$TimerWithIndex;

    .line 5249
    .local v3, tempTimer:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    invoke-virtual {v3}, Lcom/android/internal/telephony/RIL$TimerWithIndex;->getCallIndex()I

    move-result v5

    if-ne v5, v0, :cond_0

    .line 5251
    const-string v5, "[dwj] The index already in the list; then break out"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5260
    .end local v3           #tempTimer:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5262
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5263
    return-void

    .line 5247
    .restart local v3       #tempTimer:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5255
    .end local v3           #tempTimer:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    :cond_1
    :try_start_1
    new-instance v4, Lcom/android/internal/telephony/RIL$TimerWithIndex;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/RIL$TimerWithIndex;-><init>(Lcom/android/internal/telephony/RIL;I)V

    .line 5256
    .local v4, tt:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5258
    new-instance v5, Lcom/android/internal/telephony/RIL$ReleaseCallwithinSchedule;

    invoke-direct {v5, p0, v0}, Lcom/android/internal/telephony/RIL$ReleaseCallwithinSchedule;-><init>(Lcom/android/internal/telephony/RIL;I)V

    const-wide/16 v7, 0x3e8

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/internal/telephony/RIL$TimerWithIndex;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    .line 5260
    .end local v1           #i:I
    .end local v4           #tt:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public hangupAllEx(Landroid/os/Message;)V
    .locals 9
    .parameter "result"

    .prologue
    .line 5267
    const/16 v5, 0x802

    invoke-static {v5, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 5270
    .local v2, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5276
    const/4 v0, 0x1

    .line 5277
    .local v0, gsmIndex:I
    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 5279
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[dwj]add the index of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " call for timer triggered which is in hangupAllEx"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5283
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 5284
    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RIL$TimerWithIndex;

    .line 5285
    .local v3, tempTimer:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    invoke-virtual {v3}, Lcom/android/internal/telephony/RIL$TimerWithIndex;->getCallIndex()I

    move-result v5

    if-ne v5, v0, :cond_0

    .line 5287
    const-string v5, "[dwj] The index already in the list; then break out"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5296
    .end local v3           #tempTimer:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5299
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5300
    return-void

    .line 5283
    .restart local v3       #tempTimer:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5291
    .end local v3           #tempTimer:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    :cond_1
    :try_start_1
    new-instance v4, Lcom/android/internal/telephony/RIL$TimerWithIndex;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/RIL$TimerWithIndex;-><init>(Lcom/android/internal/telephony/RIL;I)V

    .line 5292
    .local v4, tt:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5294
    new-instance v5, Lcom/android/internal/telephony/RIL$ReleaseCallwithinSchedule;

    invoke-direct {v5, p0, v0}, Lcom/android/internal/telephony/RIL$ReleaseCallwithinSchedule;-><init>(Lcom/android/internal/telephony/RIL;I)V

    const-wide/16 v7, 0x3e8

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/internal/telephony/RIL$TimerWithIndex;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    .line 5296
    .end local v1           #i:I
    .end local v4           #tt:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 8
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 1143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hangupConnection: gsmIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1145
    const/16 v4, 0xc

    invoke-static {v4, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1147
    .local v1, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1150
    iget-object v4, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1151
    iget-object v4, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1153
    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1155
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[dwj] add the index of "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " call for timer triggered"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1159
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1160
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RIL$TimerWithIndex;

    .line 1161
    .local v2, tempTimer:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL$TimerWithIndex;->getCallIndex()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1163
    const-string v4, "[dwj] The index already in the list; then break out"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1172
    .end local v2           #tempTimer:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1175
    return-void

    .line 1159
    .restart local v2       #tempTimer:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1167
    .end local v2           #tempTimer:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    :cond_1
    :try_start_1
    new-instance v3, Lcom/android/internal/telephony/RIL$TimerWithIndex;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/RIL$TimerWithIndex;-><init>(Lcom/android/internal/telephony/RIL;I)V

    .line 1168
    .local v3, tt:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    new-instance v4, Lcom/android/internal/telephony/RIL$ReleaseCallwithinSchedule;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/telephony/RIL$ReleaseCallwithinSchedule;-><init>(Lcom/android/internal/telephony/RIL;I)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/internal/telephony/RIL$TimerWithIndex;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    .line 1172
    .end local v0           #i:I
    .end local v3           #tt:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 9
    .parameter "result"

    .prologue
    .line 1189
    const/16 v5, 0xe

    invoke-static {v5, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 1193
    .local v2, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1200
    const/4 v0, 0x1

    .line 1201
    .local v0, gsmIndex:I
    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1203
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[dwj]add the index of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " call for timer triggered"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1207
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 1208
    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RIL$TimerWithIndex;

    .line 1209
    .local v3, tempTimer:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    invoke-virtual {v3}, Lcom/android/internal/telephony/RIL$TimerWithIndex;->getCallIndex()I

    move-result v5

    if-ne v5, v0, :cond_0

    .line 1211
    const-string v5, "[dwj] The index already in the list; then break out"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1220
    .end local v3           #tempTimer:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1222
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1223
    return-void

    .line 1207
    .restart local v3       #tempTimer:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1215
    .end local v3           #tempTimer:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    :cond_1
    :try_start_1
    new-instance v4, Lcom/android/internal/telephony/RIL$TimerWithIndex;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/RIL$TimerWithIndex;-><init>(Lcom/android/internal/telephony/RIL;I)V

    .line 1216
    .local v4, tt:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mHangUpTimerList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    new-instance v5, Lcom/android/internal/telephony/RIL$ReleaseCallwithinSchedule;

    invoke-direct {v5, p0, v0}, Lcom/android/internal/telephony/RIL$ReleaseCallwithinSchedule;-><init>(Lcom/android/internal/telephony/RIL;I)V

    const-wide/16 v7, 0x3e8

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/internal/telephony/RIL$TimerWithIndex;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    .line 1220
    .end local v1           #i:I
    .end local v4           #tt:Lcom/android/internal/telephony/RIL$TimerWithIndex;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1179
    const/16 v1, 0xd

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1182
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1184
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1185
    return-void
.end method

.method public iccCloseChannel(ILandroid/os/Message;)V
    .locals 3
    .parameter "channel"
    .parameter "result"

    .prologue
    .line 4928
    const/16 v1, 0x811

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4931
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4932
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> iccCloseChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4937
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4938
    return-void
.end method

.method public iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 4888
    if-nez p3, :cond_0

    .line 4889
    const/16 v1, 0x80f

    invoke-static {v1, p8}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4894
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4895
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4896
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4897
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4898
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4899
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4900
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4901
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4902
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> iccExchangeAPDU: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4910
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4911
    return-void

    .line 4891
    .end local v0           #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_0
    const/16 v1, 0x812

    invoke-static {v1, p8}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .restart local v0       #rr:Lcom/android/internal/telephony/RILRequest;
    goto/16 :goto_0
.end method

.method public iccGetATR(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 4942
    const/16 v1, 0x813

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4944
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4946
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4947
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1859
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/RIL;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1860
    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 1867
    const/16 v1, 0x1c

    invoke-static {v1, p10}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1870
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1871
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1872
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1873
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1874
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1875
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1876
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1877
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1878
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> iccIO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1888
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1889
    return-void
.end method

.method public iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "AID"
    .parameter "result"

    .prologue
    .line 4915
    const/16 v1, 0x810

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4918
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> iccOpenChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4923
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4924
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3
    .parameter "data"
    .parameter "response"

    .prologue
    .line 2174
    const/16 v1, 0x3b

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2177
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2180
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2182
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2184
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "strings"
    .parameter "response"

    .prologue
    const/4 v3, 0x0

    .line 2187
    const/16 v1, 0x3c

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2190
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2192
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2195
    aget-object v1, p1, v3

    const-string v2, "AT+ESSP=2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2197
    const-string v1, "On request of CFU SET_ON"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2198
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cfu_query_key"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2205
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2206
    return-void

    .line 2199
    :cond_1
    aget-object v1, p1, v3

    const-string v2, "AT+ESSP=1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2201
    const-string v1, "On request of CFU SET_OFF"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2202
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cfu_query_key"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public isGettingAvailableNetworks()Z
    .locals 1

    .prologue
    .line 6494
    iget v0, p0, Lcom/android/internal/telephony/RIL;->getAvailableNetworkRequests:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lookupOperatorName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter "numeric"
    .parameter "desireLongName"

    .prologue
    .line 6061
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    .line 6062
    .local v0, context:Landroid/content/Context;
    move-object v2, p1

    .line 6065
    .local v2, operName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 6067
    .local v1, mvnoOperName:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->lookupVirtualOperatorNameByEfSpn(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 6068
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the result of searching mvnoOperName by EF_SPN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6070
    if-nez v1, :cond_0

    .line 6071
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->lookupVirtualOperatorNameByImsi(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 6072
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the result of searching mvnoOperName by IMSI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6074
    if-nez v1, :cond_1

    .line 6075
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->lookupVirtualOperatorNameByEfPnn(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 6076
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the result of searching mvnoOperName by EF_PNN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6078
    if-eqz v1, :cond_2

    .line 6079
    move-object v2, v1

    .line 6082
    :cond_2
    if-nez v1, :cond_e

    if-eqz p2, :cond_e

    .line 6083
    const-string v3, "46000"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "46002"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "46007"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6084
    :cond_3
    const v3, 0x205001d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6132
    :cond_4
    :goto_0
    return-object v2

    .line 6085
    :cond_5
    const-string v3, "46001"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6086
    const v3, 0x205001e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6087
    :cond_6
    const-string v3, "46003"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 6088
    const v3, 0x2050063

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6089
    :cond_7
    const-string v3, "46601"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 6090
    const v3, 0x205001f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6091
    :cond_8
    const-string v3, "46692"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 6092
    const v3, 0x2050020

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6093
    :cond_9
    const-string v3, "46697"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 6094
    const v3, 0x2050021

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6095
    :cond_a
    const-string v3, "99998"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 6096
    const v3, 0x2050022

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6097
    :cond_b
    const-string v3, "99999"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 6098
    const v3, 0x2050023

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 6101
    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/gsm/SpnOverride;->getInstance()Lcom/android/internal/telephony/gsm/SpnOverride;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    .line 6102
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 6103
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 6105
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find long operator name for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6109
    :cond_e
    if-nez v1, :cond_4

    if-nez p2, :cond_4

    .line 6111
    const-string v3, "46000"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "46002"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "46007"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 6112
    :cond_f
    const v3, 0x2050024

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 6113
    :cond_10
    const-string v3, "46001"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 6114
    const v3, 0x2050025

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 6115
    :cond_11
    const-string v3, "46003"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 6116
    const v3, 0x2050064

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 6117
    :cond_12
    const-string v3, "46601"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 6118
    const v3, 0x2050026

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 6119
    :cond_13
    const-string v3, "46692"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 6120
    const v3, 0x2050027

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 6121
    :cond_14
    const-string v3, "46697"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 6122
    const v3, 0x2050028

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 6123
    :cond_15
    const-string v3, "99997"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 6124
    const v3, 0x2050029

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 6125
    :cond_16
    const-string v3, "99999"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 6126
    const v3, 0x205002a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 6128
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find short operator name for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public notifySimMissing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6332
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mSimMissing:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 6333
    const-string v0, "[RILJ, notifySimMissing]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6334
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mSimMissing:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 6339
    :goto_0
    return-void

    .line 6337
    :cond_0
    const-string v0, "[RILJ, can not notifySimMissing]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyUimInsertedStatus(I)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 5788
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSimMissing:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 5789
    const-string v1, "[RILJ, notifyUimInsertedStatus]"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5790
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, -0x1

    aput v1, v0, v2

    .line 5791
    .local v0, result:[I
    aput p1, v0, v2

    .line 5792
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSimInsertedStatusRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 5798
    .end local v0           #result:[I
    :goto_0
    return-void

    .line 5796
    :cond_0
    const-string v1, "[RILJ, can not notifyUimInsertedStatus]"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRadioAvailable()V
    .locals 2

    .prologue
    .line 2521
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->pm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2522
    const-string v0, "RILJ"

    const-string/jumbo v1, "onRadioAvailable screen state is OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->sendScreenState(Z)V

    .line 2529
    :goto_0
    return-void

    .line 2525
    :cond_0
    const-string v0, "RILJ"

    const-string/jumbo v1, "onRadioAvailable screen state is ON"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->sendScreenState(Z)V

    goto :goto_0
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 2235
    const/16 v1, 0x42

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2239
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2241
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2242
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 2047
    const/16 v1, 0x37

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2050
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2052
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2053
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "response"

    .prologue
    .line 2023
    const/16 v1, 0x21

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2026
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2027
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2028
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2029
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2031
    if-eqz p3, :cond_0

    .line 2032
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2037
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2042
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2043
    return-void

    .line 2034
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 3
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1919
    const/16 v1, 0x23

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1922
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1923
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1928
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1929
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 4969
    const/16 v1, 0x4f

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4972
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4974
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4975
    return-void
.end method

.method public queryCellBroadcastConfigInfo(Landroid/os/Message;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 6520
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    .line 6521
    .local v1, tid:J
    const-string v3, "RILJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " run queryCellBroadcastConfigInfo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6522
    const/16 v3, 0x816

    invoke-static {v3, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6526
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6527
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6528
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 2070
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/RIL;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 2071
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "appId"
    .parameter "response"

    .prologue
    .line 2077
    const/16 v1, 0x2a

    invoke-static {v1, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2079
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2084
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2086
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2088
    if-eqz p2, :cond_0

    .line 2089
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2095
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2096
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2098
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2099
    return-void

    .line 2091
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryIccId(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 6033
    const/16 v1, 0x7ed

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6035
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6037
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6038
    return-void
.end method

.method public queryNetworkLock(ILandroid/os/Message;)V
    .locals 3
    .parameter "category"
    .parameter "response"

    .prologue
    .line 5571
    const/16 v1, 0x7e3

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5573
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryNetworkLock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5577
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5579
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5581
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5582
    return-void
.end method

.method public queryPhbStorageInfo(ILandroid/os/Message;)V
    .locals 3
    .parameter "type"
    .parameter "response"

    .prologue
    .line 5624
    const/16 v1, 0x7dd

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5626
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5627
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5631
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5632
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 5026
    const/16 v1, 0x51

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5029
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5031
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5032
    return-void
.end method

.method public queryUPBCapability(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 6235
    const/16 v1, 0x7fb

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6236
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6237
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6238
    return-void
.end method

.method public queryUimInsertedStatus(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 5779
    const/16 v1, 0x1f4

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5782
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5784
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5785
    return-void
.end method

.method public readPhoneBookEntryExt(IILandroid/os/Message;)V
    .locals 3
    .parameter "index1"
    .parameter "index2"
    .parameter "result"

    .prologue
    .line 6433
    const/16 v1, 0x80b

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6434
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6435
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6436
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> :::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6438
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6439
    return-void
.end method

.method public readUPBGasList(IILandroid/os/Message;)V
    .locals 3
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "response"

    .prologue
    .line 6272
    const/16 v1, 0x7fe

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6273
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6274
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6275
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6277
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6278
    return-void
.end method

.method public readUPBGrpEntry(ILandroid/os/Message;)V
    .locals 3
    .parameter "adnIndex"
    .parameter "response"

    .prologue
    .line 6281
    const/16 v1, 0x7ff

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6282
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6283
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6285
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6286
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1289
    const/16 v1, 0x11

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1292
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1294
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1295
    return-void
.end method

.method public replaceVtCall(ILandroid/os/Message;)V
    .locals 3
    .parameter "index"
    .parameter "result"

    .prologue
    .line 6182
    const/16 v1, 0x7f5

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6185
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6186
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6190
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6191
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 3
    .parameter "available"
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 2423
    const/16 v2, 0x66

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2424
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2425
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2430
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2431
    return-void

    .line 2425
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 2437
    const/16 v1, 0x67

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2439
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2441
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2442
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "nonce"
    .parameter "response"

    .prologue
    .line 5107
    const/16 v1, 0x69

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5109
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5113
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5114
    return-void
.end method

.method public resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 5358
    const/16 v1, 0x7d9

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5361
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5363
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5365
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5366
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 2165
    const/16 v1, 0x3a

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2168
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2170
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2171
    return-void
.end method

.method public sendBTSIMProfile(IILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "nAction"
    .parameter "nType"
    .parameter "strData"
    .parameter "response"

    .prologue
    .line 5674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sendBTSIMProfile nAction is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5675
    packed-switch p1, :pswitch_data_0

    .line 5695
    :goto_0
    return-void

    .line 5677
    :pswitch_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->requestConnectSIM(Landroid/os/Message;)V

    goto :goto_0

    .line 5680
    :pswitch_1
    invoke-direct {p0, p1, p4}, Lcom/android/internal/telephony/RIL;->requestDisconnectOrPowerOffSIM(ILandroid/os/Message;)V

    goto :goto_0

    .line 5683
    :pswitch_2
    invoke-direct {p0, p1, p2, p4}, Lcom/android/internal/telephony/RIL;->requestPowerOnOrResetSIM(IILandroid/os/Message;)V

    goto :goto_0

    .line 5686
    :pswitch_3
    invoke-direct {p0, p1, p4}, Lcom/android/internal/telephony/RIL;->requestDisconnectOrPowerOffSIM(ILandroid/os/Message;)V

    goto :goto_0

    .line 5689
    :pswitch_4
    invoke-direct {p0, p1, p2, p4}, Lcom/android/internal/telephony/RIL;->requestPowerOnOrResetSIM(IILandroid/os/Message;)V

    goto :goto_0

    .line 5692
    :pswitch_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;->requestTransferApdu(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 5675
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 3
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "result"

    .prologue
    .line 1475
    const/16 v1, 0x55

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1477
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1478
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1479
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1480
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1485
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1486
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "FeatureCode"
    .parameter "response"

    .prologue
    .line 5055
    const/16 v1, 0x54

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5057
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5062
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5063
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 10
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 1507
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1508
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1510
    .local v3, dis:Ljava/io/DataInputStream;
    const/16 v8, 0x57

    invoke-static {v8, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v6

    .line 1514
    .local v6, rr:Lcom/android/internal/telephony/RILRequest;
    :try_start_0
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1515
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    int-to-byte v9, v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeByte(B)V

    .line 1516
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1517
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1518
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1519
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1520
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1521
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    int-to-byte v0, v8

    .line 1522
    .local v0, address_nbr_of_digits:I
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    int-to-byte v9, v0

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeByte(B)V

    .line 1523
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 1524
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeByte(B)V

    .line 1523
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1526
    :cond_0
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1527
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v9

    int-to-byte v9, v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeByte(B)V

    .line 1528
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    int-to-byte v7, v8

    .line 1529
    .local v7, subaddr_nbr_of_digits:I
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    int-to-byte v9, v7

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeByte(B)V

    .line 1530
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_1

    .line 1531
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeByte(B)V

    .line 1530
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1534
    :cond_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .line 1535
    .local v2, bearerDataLength:I
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1536
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_2

    .line 1537
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeByte(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1536
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1539
    .end local v0           #address_nbr_of_digits:I
    .end local v2           #bearerDataLength:I
    .end local v5           #i:I
    .end local v7           #subaddr_nbr_of_digits:I
    :catch_0
    move-exception v4

    .line 1540
    .local v4, ex:Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendSmsCdma: conversion from input stream to object failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1544
    .end local v4           #ex:Ljava/io/IOException;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1546
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1547
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 3
    .parameter "c"
    .parameter "result"

    .prologue
    .line 1414
    const/16 v1, 0x18

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1417
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1419
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1421
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1422
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 2261
    const/16 v1, 0x45

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2264
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2266
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2267
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2268
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 2275
    const/16 v1, 0x6b

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2278
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2281
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2282
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2283
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 1490
    const/16 v1, 0x19

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1493
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1494
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1495
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1499
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1500
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 2248
    const/16 v1, 0x46

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2251
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2253
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2254
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2255
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "ussdString"
    .parameter "response"

    .prologue
    .line 2141
    const/16 v1, 0x1d

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2144
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2147
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2149
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2150
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 3
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 1265
    const/16 v1, 0x34

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1268
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1271
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1272
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1274
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1275
    return-void
.end method

.method public set3GCapabilitySIM(ILandroid/os/Message;)V
    .locals 3
    .parameter "simId"
    .parameter "response"

    .prologue
    .line 6200
    const/16 v1, 0x7f7

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6201
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6202
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6204
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6205
    return-void
.end method

.method public setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "acmmax"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 5344
    const/16 v1, 0x7d8

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5347
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5349
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5350
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5351
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5353
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5354
    return-void
.end method

.method public setAllCbLanguageOn(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 6531
    const/16 v1, 0x817

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6535
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6536
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6537
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 3
    .parameter "bandMode"
    .parameter "response"

    .prologue
    .line 2215
    const/16 v1, 0x41

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2218
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2219
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2224
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2225
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 3
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 1903
    const/16 v1, 0x20

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1907
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1909
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1914
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1915
    return-void
.end method

.method public setCOLP(ZLandroid/os/Message;)V
    .locals 3
    .parameter "enable"
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 5480
    const/16 v1, 0x7d2

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5484
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5486
    if-eqz p1, :cond_0

    .line 5487
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5492
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5495
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5496
    return-void

    .line 5489
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .parameter "action"
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "timeSeconds"
    .parameter "response"

    .prologue
    .line 1997
    const/16 v1, 0x22

    invoke-static {v1, p6}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2000
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2001
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2002
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2003
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2005
    if-eqz p4, :cond_0

    .line 2006
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2011
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2017
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2018
    return-void

    .line 2008
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCallIndication(IIILandroid/os/Message;)V
    .locals 3
    .parameter "mode"
    .parameter "callId"
    .parameter "seqNumber"
    .parameter "result"

    .prologue
    .line 6167
    const/16 v1, 0x7f4

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6170
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6171
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6172
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6173
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6178
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6179
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 3
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1933
    const/16 v1, 0x24

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1936
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1937
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1938
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1943
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1944
    return-void

    .line 1937
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 3
    .parameter "activate"
    .parameter "response"

    .prologue
    const/4 v1, 0x1

    .line 5085
    const/16 v2, 0x5e

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5087
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5088
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5090
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5092
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5093
    return-void
.end method

.method public setCdmaBroadcastConfig([ILandroid/os/Message;)V
    .locals 4
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 5073
    const/16 v2, 0x5d

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5075
    .local v1, rr:Lcom/android/internal/telephony/RILRequest;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 5076
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5075
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5079
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5081
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5082
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 3
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 4981
    const/16 v1, 0x4e

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4984
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4985
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4987
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4990
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4991
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 3
    .parameter "cdmaSubscription"
    .parameter "response"

    .prologue
    .line 4997
    const/16 v1, 0x4d

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5000
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5001
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5006
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5007
    return-void
.end method

.method public setCellBroadcastChannelConfigInfo(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .parameter "config"
    .parameter "cb_set_type"
    .parameter "response"

    .prologue
    .line 6498
    const/16 v1, 0x814

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6501
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6502
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6503
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6505
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6506
    return-void
.end method

.method public setCellBroadcastLanguageConfigInfo(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "config"
    .parameter "response"

    .prologue
    .line 6509
    const/16 v1, 0x815

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6513
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6516
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6517
    return-void
.end method

.method public setCurrentPreferredNetworkType()V
    .locals 2

    .prologue
    .line 2319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCurrentPreferredNetworkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2320
    iget v0, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2321
    return-void
.end method

.method public setEtws(ILandroid/os/Message;)V
    .locals 3
    .parameter "mode"
    .parameter "result"

    .prologue
    .line 6540
    const/16 v1, 0x818

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6542
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6543
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6547
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6548
    return-void
.end method

.method public setFDMode(IIILandroid/os/Message;)V
    .locals 6
    .parameter "mode"
    .parameter "parameter1"
    .parameter "parameter2"
    .parameter "response"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5543
    const/16 v1, 0x819

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5550
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5552
    if-eqz p1, :cond_0

    if-ne p1, v3, :cond_2

    .line 5553
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5554
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5565
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5567
    return-void

    .line 5555
    :cond_2
    if-ne p1, v5, :cond_3

    .line 5556
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5557
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5558
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 5559
    :cond_3
    if-ne p1, v4, :cond_1

    .line 5560
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5561
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5562
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5563
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 2105
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/RIL;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 2106
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "appId"
    .parameter "response"

    .prologue
    .line 2113
    const/16 v2, 0x2b

    invoke-static {v2, p6}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2116
    .local v1, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2121
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2122
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2123
    if-eqz p2, :cond_0

    const-string v0, "1"

    .line 2124
    .local v0, lockString:Ljava/lang/String;
    :goto_0
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2126
    if-eqz p3, :cond_1

    .line 2127
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2132
    :goto_1
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2133
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2135
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2137
    return-void

    .line 2123
    .end local v0           #lockString:Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 2129
    .restart local v0       #lockString:Ljava/lang/String;
    :cond_1
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setGprsConnType(ILandroid/os/Message;)V
    .locals 3
    .parameter "type"
    .parameter "result"

    .prologue
    .line 5418
    const/16 v1, 0x7e0

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5421
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5423
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5424
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5426
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5427
    return-void
.end method

.method public setGprsTransferType(ILandroid/os/Message;)V
    .locals 4
    .parameter "type"
    .parameter "result"

    .prologue
    .line 5431
    const/16 v2, 0x7e1

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 5434
    .local v1, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5436
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5437
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5441
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GPRS_TRANSFER_TYPE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5442
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "gemini.gprs.transfer.type"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5443
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 5444
    const-string v2, "Broadcast: ACTION_GPRS_CONNECTION_TYPE_SELECT"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5449
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5450
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 3
    .parameter "activate"
    .parameter "response"

    .prologue
    const/4 v1, 0x1

    .line 2487
    const/16 v2, 0x5b

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2489
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2490
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2494
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2495
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 5
    .parameter "config"
    .parameter "response"

    .prologue
    .line 2459
    const/16 v3, 0x5a

    invoke-static {v3, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 2461
    .local v2, rr:Lcom/android/internal/telephony/RILRequest;
    array-length v1, p1

    .line 2462
    .local v1, numOfConfig:I
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2464
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2465
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2466
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2467
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2468
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2469
    iget-object v4, v2, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2464
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2469
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 2473
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " configs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2475
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    .line 2476
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2475
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2480
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2481
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 3
    .parameter "enable"
    .parameter "response"

    .prologue
    const/4 v1, 0x1

    .line 2381
    iget-boolean v2, p0, Lcom/android/internal/telephony/RIL;->isScreenOn:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 2392
    :goto_0
    return-void

    .line 2384
    :cond_0
    const/16 v2, 0x4c

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2385
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2386
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2391
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_0

    .line 2386
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 4
    .parameter "enableMute"
    .parameter "response"

    .prologue
    const/4 v1, 0x1

    .line 1340
    const/16 v2, 0x35

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1343
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1346
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1347
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1349
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1350
    return-void

    .line 1347
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "catagory"
    .parameter "lockop"
    .parameter "password"
    .parameter "data_imsi"
    .parameter "gid1"
    .parameter "gid2"
    .parameter "response"

    .prologue
    .line 5587
    const/16 v1, 0x7e4

    invoke-static {v1, p7}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5589
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNetworkLock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5593
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5594
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5595
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5596
    if-eqz p3, :cond_0

    .line 5597
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5601
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5602
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5603
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5605
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5607
    return-void

    .line 5599
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1948
    const/16 v1, 0x2e

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1952
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1954
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1955
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 1959
    const/16 v1, 0x2f

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1963
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1966
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1968
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1969
    return-void
.end method

.method public setNetworkSelectionModeManualWithAct(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "operatorNumeric"
    .parameter "act"
    .parameter "response"

    .prologue
    .line 5512
    const/16 v1, 0x7ec

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5516
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5519
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5520
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5521
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5523
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5524
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 881
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 884
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 888
    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    .line 890
    :cond_0
    return-void
.end method

.method public setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .parameter "index"
    .parameter "numeric"
    .parameter "nAct"
    .parameter "response"

    .prologue
    .line 6220
    const/16 v1, 0x7fa

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6221
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 6222
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6223
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6230
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6231
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6232
    return-void

    .line 6225
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6226
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6227
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6228
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPhoneBookMemStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "storage"
    .parameter "password"
    .parameter "result"

    .prologue
    .line 6419
    const/16 v1, 0x80a

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6420
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6421
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6422
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> :::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6425
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6426
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 4961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPhoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " old value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4962
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    .line 4963
    return-void
.end method

.method public setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "currency"
    .parameter "ppu"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 5370
    const/16 v1, 0x7da

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5373
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5375
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5376
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5377
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5378
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5380
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5381
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 5
    .parameter "networkType"
    .parameter "response"

    .prologue
    const/4 v4, 0x1

    .line 2329
    const/16 v0, 0x64

    .line 2330
    .local v0, ratOnlyStart:I
    const/16 v2, 0x49

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2333
    .local v1, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2338
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2340
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    .line 2346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " network preferred = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2349
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2350
    return-void
.end method

.method public setPreferredNetworkTypeRIL(I)V
    .locals 2
    .parameter "NetworkType"

    .prologue
    .line 6313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPreferredNetworkTypeRIL NetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6314
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    .line 6315
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 3
    .parameter "enable"
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 1248
    const/16 v2, 0x52

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1251
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1252
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1255
    return-void

    .line 1252
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRadioMode(ILandroid/os/Message;)V
    .locals 3
    .parameter "mode"
    .parameter "result"

    .prologue
    .line 5405
    const/16 v1, 0x7dc

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5408
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5410
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5411
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5413
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5414
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 7
    .parameter "on"
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 1752
    sget-boolean v4, Lcom/android/internal/telephony/RIL;->mInitialRadioStateChange:Z

    if-eqz v4, :cond_1

    .line 1753
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v4

    .line 1754
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1755
    const/16 v5, 0x49

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 1757
    .local v2, rrPnt:Lcom/android/internal/telephony/RILRequest;
    const/16 v0, 0x64

    .line 1759
    .local v0, ratOnlyStart:I
    iget-object v5, v2, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1764
    iget-object v5, v2, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget v6, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1765
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1768
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1779
    .end local v0           #ratOnlyStart:I
    .end local v2           #rrPnt:Lcom/android/internal/telephony/RILRequest;
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1782
    :cond_1
    const/16 v4, 0x17

    invoke-static {v4, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1784
    .local v1, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v4, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1785
    iget-object v4, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_2

    :goto_0
    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1788
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_3

    const-string v3, " on"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1792
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1793
    return-void

    .line 1779
    .end local v1           #rr:Lcom/android/internal/telephony/RILRequest;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1785
    .restart local v1       #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1788
    :cond_3
    const-string v3, " off"

    goto :goto_1
.end method

.method public setRadioPowerOff(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 5385
    const/16 v1, 0x7db

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5388
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5390
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5391
    return-void
.end method

.method public setRadioPowerOn(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 5395
    const/16 v1, 0x7f1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5398
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5400
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5401
    return-void
.end method

.method public setScri(ZLandroid/os/Message;)V
    .locals 4
    .parameter "forceRelease"
    .parameter "response"

    .prologue
    const/4 v1, 0x1

    .line 5528
    const/16 v2, 0x7e5

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5531
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5533
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5534
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5536
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5537
    return-void

    .line 5534
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSimRecoveryOn(ILandroid/os/Message;)V
    .locals 3
    .parameter "Type"
    .parameter "response"

    .prologue
    .line 6351
    const/16 v1, 0x803

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6354
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6355
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6358
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6359
    return-void
.end method

.method public setSmsParameters(Landroid/telephony/SmsParameters;Landroid/os/Message;)V
    .locals 3
    .parameter "params"
    .parameter "response"

    .prologue
    .line 6480
    const/16 v1, 0x80e

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6482
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6484
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6485
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget v2, p1, Landroid/telephony/SmsParameters;->format:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6486
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget v2, p1, Landroid/telephony/SmsParameters;->vp:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6487
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget v2, p1, Landroid/telephony/SmsParameters;->pid:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6488
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget v2, p1, Landroid/telephony/SmsParameters;->dcs:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6490
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6491
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "address"
    .parameter "result"

    .prologue
    .line 2409
    const/16 v1, 0x65

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2411
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2416
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2417
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 3
    .parameter "enable"
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 1797
    const/16 v2, 0x3e

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1800
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1801
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1806
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1807
    return-void

    .line 1801
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTRM(ILandroid/os/Message;)V
    .locals 3
    .parameter "mode"
    .parameter "result"

    .prologue
    .line 6371
    const/16 v1, 0x805

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6373
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6374
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6377
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6378
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 3
    .parameter "ttyMode"
    .parameter "response"

    .prologue
    .line 5038
    const/16 v1, 0x50

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5041
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5042
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5047
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5048
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 10
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "protocol"
    .parameter "result"

    .prologue
    .line 1687
    const-string v8, "1"

    .local v8, request_cid:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    .line 1688
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/RIL;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1689
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "protocol"
    .parameter "requestCid"
    .parameter "result"

    .prologue
    .line 1700
    const/16 v1, 0x1b

    invoke-static {v1, p9}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1710
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1711
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1712
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1713
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1714
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1715
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1716
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1722
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1723
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " radioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " apn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " authType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " protocol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestCid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1730
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1731
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 3
    .parameter "c"
    .parameter "result"

    .prologue
    .line 1428
    iget v1, p0, Lcom/android/internal/telephony/RIL;->dtmfRequestCount:I

    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 1430
    iget-boolean v1, p0, Lcom/android/internal/telephony/RIL;->dtmfStatus:Z

    if-nez v1, :cond_0

    .line 1431
    const/16 v1, 0x31

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1432
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/RIL;->dtmfRequestCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1433
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1434
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1435
    iget v1, p0, Lcom/android/internal/telephony/RIL;->dtmfRequestCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/RIL;->dtmfRequestCount:I

    .line 1436
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/RIL;->dtmfStatus:Z

    .line 1447
    .end local v0           #rr:Lcom/android/internal/telephony/RILRequest;
    :goto_0
    return-void

    .line 1439
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMF status conflict, want to start DTMF when status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/RIL;->dtmfStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1444
    :cond_1
    const-string v1, "DTMF requests are over 32"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1453
    iget v1, p0, Lcom/android/internal/telephony/RIL;->dtmfRequestCount:I

    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 1455
    iget-boolean v1, p0, Lcom/android/internal/telephony/RIL;->dtmfStatus:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1456
    const/16 v1, 0x32

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1457
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/RIL;->dtmfRequestCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1458
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1459
    iget v1, p0, Lcom/android/internal/telephony/RIL;->dtmfRequestCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/RIL;->dtmfRequestCount:I

    .line 1460
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/RIL;->dtmfStatus:Z

    .line 1471
    .end local v0           #rr:Lcom/android/internal/telephony/RILRequest;
    :goto_0
    return-void

    .line 1463
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMF status conflict, want to start DTMF when status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/RIL;->dtmfStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1468
    :cond_1
    const-string v1, "DTMF requests are over 32"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 905
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 906
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 946
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 947
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "pin"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 953
    const/4 v1, 0x4

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 955
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 957
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 959
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 961
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 962
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "pin"
    .parameter "aid"
    .parameter "result"

    .prologue
    const/4 v3, 0x2

    .line 912
    invoke-static {v3, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 914
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 916
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 918
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 920
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 921
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 925
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 926
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 966
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 967
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "puk"
    .parameter "newPin2"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 973
    const/4 v1, 0x5

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 975
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 977
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 978
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 979
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 980
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 982
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 983
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "puk"
    .parameter "newPin"
    .parameter "aid"
    .parameter "result"

    .prologue
    const/4 v3, 0x3

    .line 932
    invoke-static {v3, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 934
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 936
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 938
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 939
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 941
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 942
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "netpin"
    .parameter "result"

    .prologue
    .line 1043
    const/16 v1, 0x8

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1045
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1047
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1048
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1050
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1051
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1227
    const/16 v1, 0xf

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1231
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1233
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1234
    return-void
.end method

.method public testingEmergencyCall()V
    .locals 2

    .prologue
    .line 5121
    const-string/jumbo v0, "testingEmergencyCall"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5122
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5123
    return-void
.end method

.method public voiceAccept(ILandroid/os/Message;)V
    .locals 3
    .parameter "callId"
    .parameter "result"

    .prologue
    .line 5217
    const/16 v1, 0x7f0

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5219
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5221
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5222
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5224
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5225
    return-void
.end method

.method public vtDial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 5189
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 5190
    return-void
.end method

.method public vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 3
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 5195
    const/16 v1, 0x7e6

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5197
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5198
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5199
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5201
    if-nez p3, :cond_0

    .line 5202
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5210
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5212
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5213
    return-void

    .line 5204
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5205
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5206
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5207
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method

.method public writePhbEntry(Lcom/android/internal/telephony/PhbEntry;Landroid/os/Message;)V
    .locals 3
    .parameter "entry"
    .parameter "result"

    .prologue
    .line 5638
    const/16 v1, 0x7de

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5640
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget v2, p1, Lcom/android/internal/telephony/PhbEntry;->type:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5641
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget v2, p1, Lcom/android/internal/telephony/PhbEntry;->index:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5642
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p1, Lcom/android/internal/telephony/PhbEntry;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5643
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget v2, p1, Lcom/android/internal/telephony/PhbEntry;->ton:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5644
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p1, Lcom/android/internal/telephony/PhbEntry;->alphaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5647
    sget-boolean v1, Lcom/android/internal/telephony/RIL;->RIL_ENG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5650
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5651
    return-void
.end method

.method public writePhoneBookEntryExt(Lcom/android/internal/telephony/gsm/PBEntry;Landroid/os/Message;)V
    .locals 3
    .parameter "entry"
    .parameter "result"

    .prologue
    .line 6445
    const/16 v1, 0x80c

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6447
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/PBEntry;->getIndex1()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6448
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/PBEntry;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6449
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/PBEntry;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6450
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/PBEntry;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6451
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/PBEntry;->getHidden()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6453
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/PBEntry;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6454
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/PBEntry;->getAdnumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6455
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/PBEntry;->getAdtype()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6456
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/PBEntry;->getSecondtext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6457
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/PBEntry;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6460
    sget-boolean v1, Lcom/android/internal/telephony/RIL;->RIL_ENG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6462
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6463
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "status"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1601
    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1602
    .local v3, bytepdu:[B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "writeSmsToRuim()  PDU: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1606
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1607
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1609
    .local v4, dis:Ljava/io/DataInputStream;
    const/16 v9, 0x60

    invoke-static {v9, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    .line 1612
    .local v7, rr:Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->translateStatus(I)I

    move-result p1

    .line 1613
    iget-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v9, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1615
    :try_start_0
    iget-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1616
    iget-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    int-to-byte v10, v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeByte(B)V

    .line 1617
    iget-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1618
    iget-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1619
    iget-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1620
    iget-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1621
    iget-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1622
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v9

    int-to-byte v0, v9

    .line 1623
    .local v0, address_nbr_of_digits:I
    iget-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    int-to-byte v10, v0

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeByte(B)V

    .line 1624
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v0, :cond_0

    .line 1625
    iget-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeByte(B)V

    .line 1624
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1627
    :cond_0
    iget-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1628
    iget-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v10

    int-to-byte v10, v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeByte(B)V

    .line 1629
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v9

    int-to-byte v8, v9

    .line 1630
    .local v8, subaddr_nbr_of_digits:I
    iget-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    int-to-byte v10, v8

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeByte(B)V

    .line 1631
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_1

    .line 1632
    iget-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeByte(B)V

    .line 1631
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1635
    :cond_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .line 1636
    .local v2, bearerDataLength:I
    iget-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1637
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_2

    .line 1638
    iget-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeByte(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1637
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1640
    .end local v0           #address_nbr_of_digits:I
    .end local v2           #bearerDataLength:I
    .end local v6           #i:I
    .end local v8           #subaddr_nbr_of_digits:I
    :catch_0
    move-exception v5

    .line 1641
    .local v5, ex:Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "writeSmsToRuim: conversion from input stream to object failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1651
    .end local v5           #ex:Ljava/io/IOException;
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1652
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1582
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->translateStatus(I)I

    move-result p1

    .line 1584
    const/16 v1, 0x3f

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1587
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1588
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1589
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1597
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1598
    return-void
.end method

.method public writeUPBGrpEntry(I[ILandroid/os/Message;)V
    .locals 5
    .parameter "adnIndex"
    .parameter "grpIds"
    .parameter "response"

    .prologue
    .line 6289
    const/16 v3, 0x800

    invoke-static {v3, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 6290
    .local v2, rr:Lcom/android/internal/telephony/RILRequest;
    array-length v1, p2

    .line 6291
    .local v1, nLen:I
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6292
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6293
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 6294
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    aget v4, p2, v0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6296
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeUPBGrpEntry nLen is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6298
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6300
    return-void
.end method
