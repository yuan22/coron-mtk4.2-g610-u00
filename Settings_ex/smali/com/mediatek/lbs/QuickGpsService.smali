.class public Lcom/mediatek/lbs/QuickGpsService;
.super Landroid/app/Service;
.source "QuickGpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/lbs/QuickGpsService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_EPODOWNLOAD_FROMWIFI:Ljava/lang/String; = "android.intent.action.ACTION_EPODOWNLOAD_FROMWIFI"

.field public static final ACTION_STOPDOWNLOAD_FROMWIFI:Ljava/lang/String; = "android.intent.action.ACTION_STOPDOWNLOAD_FROMWIFI"

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.mediatek.lbs.quickgps.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.mediatek.lbs.quickgps.ALARM_WAKEUP"

.field private static final EPO_DOWNLAOD_INITATE_STATE:I = 0x0

.field private static final EPO_DOWNLOAD_COMPLETE_STATE:I = 0x64

.field private static final EVENT_NEW_INTENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Settings/QuickGpsService"


# instance fields
.field private epoDownloadStatus:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDownLoadRetryTimes:I

.field private mDownLoadTimes:I

.field private mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

.field private final mEpoStatusListener:Lcom/mediatek/common/epo/MtkEpoStatusListener;

.field private mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

.field private mInterval:I

.field private mServiceHandler:Lcom/mediatek/lbs/QuickGpsService$ServiceHandler;

.field private mStartId:I

.field private mTimeout:I

.field private mTimeoutIntent:Landroid/app/PendingIntent;

.field private mWakeupIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    const v0, 0x493e0

    iput v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mInterval:I

    .line 54
    new-instance v0, Lcom/mediatek/lbs/QuickGpsService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/QuickGpsService$1;-><init>(Lcom/mediatek/lbs/QuickGpsService;)V

    iput-object v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoStatusListener:Lcom/mediatek/common/epo/MtkEpoStatusListener;

    .line 63
    iput v1, p0, Lcom/mediatek/lbs/QuickGpsService;->epoDownloadStatus:I

    .line 65
    iput v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mDownLoadTimes:I

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mDownLoadRetryTimes:I

    .line 75
    const v0, 0x36ee80

    iput v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mTimeout:I

    .line 77
    new-instance v0, Lcom/mediatek/lbs/QuickGpsService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/QuickGpsService$2;-><init>(Lcom/mediatek/lbs/QuickGpsService;)V

    iput-object v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 166
    return-void
.end method

.method private HandleEpoDownloadFail()V
    .locals 2

    .prologue
    .line 263
    const-string v0, "HandleEpoDownloadFail"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 265
    iget v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mDownLoadTimes:I

    iget v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mDownLoadRetryTimes:I

    if-ge v0, v1, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsService;->startAlarmToWakeupDownload()V

    .line 274
    :goto_0
    return-void

    .line 271
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/lbs/QuickGpsService;->epoDownloadStatus:I

    .line 272
    iget-object v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 273
    iget v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mStartId:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelf(I)V

    goto :goto_0
.end method

.method private HandleEpoDownloadSuccess()V
    .locals 2

    .prologue
    .line 253
    const-string v0, "HandleEpoDownloadSuccess"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/lbs/QuickGpsService;->epoDownloadStatus:I

    .line 255
    iget-object v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 256
    iget v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mStartId:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelf(I)V

    .line 257
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/lbs/QuickGpsService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/QuickGpsService;->updateEpoStatus(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/lbs/QuickGpsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mDownLoadTimes:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/lbs/QuickGpsService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/lbs/QuickGpsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsService;->startDownloadEpoFile()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 313
    const-string v0, "Settings/QuickGpsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method

.method private startAlarmToTimeout()V
    .locals 7

    .prologue
    .line 291
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsService;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 293
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 294
    .local v0, now:J
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget v4, p0, Lcom/mediatek/lbs/QuickGpsService;->mTimeout:I

    int-to-long v4, v4

    add-long/2addr v4, v0

    iget-object v6, p0, Lcom/mediatek/lbs/QuickGpsService;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 296
    .end local v0           #now:J
    :cond_0
    return-void
.end method

.method private startAlarmToWakeupDownload()V
    .locals 7

    .prologue
    .line 280
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsService;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 283
    .local v0, now:J
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget v4, p0, Lcom/mediatek/lbs/QuickGpsService;->mInterval:I

    int-to-long v4, v4

    add-long/2addr v4, v0

    iget-object v6, p0, Lcom/mediatek/lbs/QuickGpsService;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 285
    .end local v0           #now:J
    :cond_0
    return-void
.end method

.method private startDownloadEpoFile()V
    .locals 3

    .prologue
    .line 302
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 305
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/common/epo/MtkEpoClientManager;->startDownload()I

    move-result v0

    .line 307
    .local v0, ret:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDownload ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 309
    iget v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mDownLoadTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mDownLoadTimes:I

    .line 310
    return-void
.end method

.method private updateEpoStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 228
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 247
    :goto_0
    return-void

    .line 230
    :cond_0
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 231
    const-string v0, "epo started"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_1
    const/16 v0, 0xc9

    if-ne p1, v0, :cond_2

    .line 233
    const-string v0, "epo update success"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsService;->HandleEpoDownloadSuccess()V

    goto :goto_0

    .line 235
    :cond_2
    const/16 v0, 0xca

    if-ne p1, v0, :cond_3

    .line 236
    const-string v0, "epo update failure"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 237
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsService;->HandleEpoDownloadFail()V

    goto :goto_0

    .line 238
    :cond_3
    const/16 v0, 0xcb

    if-ne p1, v0, :cond_4

    .line 239
    const-string v0, "epo update canceled"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_4
    const/16 v0, 0x12c

    if-ne p1, v0, :cond_5

    .line 241
    const-string v0, "epo is idle"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_5
    const/16 v0, 0xcc

    if-ne p1, v0, :cond_6

    .line 243
    const-string v0, "epo is canceling"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_6
    const-string v0, "WARNING: unknown status recv"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public handleNewIntent(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v2, 0x1

    .line 194
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_EPODOWNLOAD_FROMWIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 197
    const-string v1, " start download epo on wifi"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v1, :cond_2

    .line 199
    :cond_0
    const-string v1, "EpoMgr or mAlarmManager is null, stop services"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 222
    :cond_1
    :goto_0
    return-void

    .line 204
    :cond_2
    iput p2, p0, Lcom/mediatek/lbs/QuickGpsService;->mStartId:I

    .line 205
    iget v1, p0, Lcom/mediatek/lbs/QuickGpsService;->epoDownloadStatus:I

    if-ne v1, v2, :cond_3

    .line 206
    const-string v1, "epo file is downloading, don\'t repeat download"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_3
    iput v2, p0, Lcom/mediatek/lbs/QuickGpsService;->epoDownloadStatus:I

    .line 212
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsService;->startDownloadEpoFile()V

    goto :goto_0

    .line 214
    :cond_4
    const-string v1, "android.intent.action.ACTION_STOPDOWNLOAD_FROMWIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    const-string v1, "stop download and stop services"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 218
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/common/epo/MtkEpoClientManager;->stopDownload()V

    .line 219
    iput p2, p0, Lcom/mediatek/lbs/QuickGpsService;->mStartId:I

    .line 220
    iget v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mStartId:I

    invoke-virtual {p0, v1}, Landroid/app/Service;->stopSelf(I)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 94
    const-string v0, "onBind"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 100
    const-string v2, "onCreate"

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 105
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "QuickGpsService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 108
    new-instance v2, Lcom/mediatek/lbs/QuickGpsService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/mediatek/lbs/QuickGpsService$ServiceHandler;-><init>(Lcom/mediatek/lbs/QuickGpsService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mServiceHandler:Lcom/mediatek/lbs/QuickGpsService$ServiceHandler;

    .line 110
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mContext:Landroid/content/Context;

    .line 111
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mContext:Landroid/content/Context;

    const-string v3, "mtk-epo-client"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/epo/MtkEpoClientManager;

    iput-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    .line 112
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoStatusListener:Lcom/mediatek/common/epo/MtkEpoStatusListener;

    invoke-interface {v2, v3}, Lcom/mediatek/common/epo/MtkEpoClientManager;->addStatusListener(Lcom/mediatek/common/epo/MtkEpoStatusListener;)V

    .line 115
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.mediatek.lbs.quickgps.ALARM_WAKEUP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v2, "com.mediatek.lbs.quickgps.ALARM_TIMEOUT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsService;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 121
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.mediatek.lbs.quickgps.ALARM_WAKEUP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 122
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.mediatek.lbs.quickgps.ALARM_TIMEOUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 124
    new-instance v2, Lcom/mediatek/lbs/GpsConfigManager;

    invoke-direct {v2}, Lcom/mediatek/lbs/GpsConfigManager;-><init>()V

    iput-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    .line 125
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    const-string v3, "/system/etc/gps_conf.xml"

    invoke-virtual {v2, v3}, Lcom/mediatek/lbs/GpsConfigManager;->updateGpsConfig(Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v2}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoAutoDownLoadRetryInterval()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mInterval:I

    .line 127
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v2}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoAutoDownLoadRetryTime()I

    move-result v2

    iput v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mDownLoadRetryTimes:I

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GpsConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsService;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsService;->startAlarmToTimeout()V

    .line 132
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 153
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    iget-object v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 157
    iget-object v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v0}, Lcom/mediatek/common/epo/MtkEpoClientManager;->stopDownload()V

    .line 161
    iget-object v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoStatusListener:Lcom/mediatek/common/epo/MtkEpoStatusListener;

    invoke-interface {v0, v1}, Lcom/mediatek/common/epo/MtkEpoClientManager;->removeStatusListener(Lcom/mediatek/common/epo/MtkEpoStatusListener;)V

    .line 163
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 164
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x2

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand:intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 138
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    if-nez v1, :cond_1

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 148
    :goto_0
    return v3

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mServiceHandler:Lcom/mediatek/lbs/QuickGpsService$ServiceHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 144
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 145
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mServiceHandler:Lcom/mediatek/lbs/QuickGpsService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
