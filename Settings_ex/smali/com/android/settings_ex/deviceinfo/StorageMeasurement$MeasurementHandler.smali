.class Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;
.super Landroid/os/Handler;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeasurementHandler"
.end annotation


# static fields
.field public static final MSG_COMPLETED:I = 0x4

.field public static final MSG_CONNECTED:I = 0x2

.field public static final MSG_DISCONNECT:I = 0x3

.field public static final MSG_INVALIDATE:I = 0x5

.field public static final MSG_MEASURE:I = 0x1


# instance fields
.field private volatile mBound:Z

.field private mCached:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefContainerConn:Landroid/content/ServiceConnection;

.field private mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

.field private mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    .line 323
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 295
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    .line 305
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$1;-><init>(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    .line 324
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    .line 325
    return-void
.end method

.method static synthetic access$102(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    return p1
.end method

.method private measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 11
    .parameter "imcs"

    .prologue
    .line 390
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v6}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 391
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v6}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, path:Ljava/lang/String;
    :goto_0
    const-string v6, "StorageMeasurement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "measureApproximateStorage, path is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :try_start_0
    invoke-interface {p1, v3}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v4

    .line 403
    .local v4, stats:[J
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    const/4 v7, 0x0

    aget-wide v7, v4, v7

    #setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v6, v7, v8}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$502(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    .line 404
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    const/4 v7, 0x1

    aget-wide v7, v4, v7

    #setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v6, v7, v8}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$602(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    .line 407
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v6}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$700(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v6}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$700(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 410
    :cond_1
    invoke-static {}, Lcom/huawei/android/util/SystemInfo;->getDeviceEmmc()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 411
    .local v5, sysSize:Ljava/lang/String;
    const-wide v0, 0x100000000L

    .line 413
    .local v0, TOTAL_STORAGE:J
    :try_start_1
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x400

    mul-long/2addr v7, v9

    #setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v6, v7, v8}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$502(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    .line 414
    const-string v6, "StorageMeasurement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mTotalSize  is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v8}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v6}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-gez v6, :cond_4

    .line 417
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v6, v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$502(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    .line 418
    const-string v6, "StorageMeasurement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " 4G mTotalSize  is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v8}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 434
    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v7}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v7

    const/4 v9, 0x0

    aget-wide v9, v4, v9

    sub-long/2addr v7, v9

    #setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mSystemSize:J
    invoke-static {v6, v7, v8}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$802(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    .line 435
    const-string v6, "StorageMeasurement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calc  mTotalSize += mSystemSize "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v8}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  mSystemSize "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mSystemSize:J
    invoke-static {v8}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 442
    .end local v0           #TOTAL_STORAGE:J
    .end local v4           #stats:[J
    .end local v5           #sysSize:Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #calls: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V
    invoke-static {v6}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$900(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)V

    .line 443
    return-void

    .line 394
    .end local v3           #path:Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #path:Ljava/lang/String;
    goto/16 :goto_0

    .line 419
    .restart local v0       #TOTAL_STORAGE:J
    .restart local v4       #stats:[J
    .restart local v5       #sysSize:Ljava/lang/String;
    :cond_4
    :try_start_3
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v6}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v6

    const-wide/16 v8, 0x2

    mul-long/2addr v8, v0

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    .line 420
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    const-wide/16 v7, 0x2

    mul-long/2addr v7, v0

    #setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v6, v7, v8}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$502(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    .line 421
    const-string v6, "StorageMeasurement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " 8G mTotalSize  is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v8}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 429
    :catch_0
    move-exception v2

    .line 430
    .local v2, e:Ljava/lang/Exception;
    :try_start_4
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v6, v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$502(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    .line 431
    const-string v6, "StorageMeasurement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mSystemSize exception is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mSystemSize:J
    invoke-static {v8}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 438
    .end local v0           #TOTAL_STORAGE:J
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #stats:[J
    .end local v5           #sysSize:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 439
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v6, "StorageMeasurement"

    const-string v7, "Problem in container service"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 422
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #TOTAL_STORAGE:J
    .restart local v4       #stats:[J
    .restart local v5       #sysSize:Ljava/lang/String;
    :cond_5
    :try_start_5
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v6}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v6

    const-wide/16 v8, 0x4

    mul-long/2addr v8, v0

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    .line 423
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    const-wide/16 v7, 0x4

    mul-long/2addr v7, v0

    #setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v6, v7, v8}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$502(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    .line 424
    const-string v6, "StorageMeasurement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " 16G mTotalSize  is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v8}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 426
    :cond_6
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    const-wide/16 v7, 0x8

    mul-long/2addr v7, v0

    #setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v6, v7, v8}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$502(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    .line 427
    const-string v6, "StorageMeasurement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " 32 G mTotalSize  is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v8}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method

.method private measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 27
    .parameter "imcs"

    .prologue
    .line 446
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    move-object v11, v4

    .line 447
    .local v11, context:Landroid/content/Context;
    :goto_0
    if-nez v11, :cond_2

    .line 513
    :cond_0
    :goto_1
    return-void

    .line 446
    .end local v11           #context:Landroid/content/Context;
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 451
    .restart local v11       #context:Landroid/content/Context;
    :cond_2
    new-instance v5, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-direct {v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;-><init>()V

    .line 452
    .local v5, details:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 454
    .local v7, finished:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    iput-wide v0, v5, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    .line 455
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$600(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    iput-wide v0, v5, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    .line 457
    const-string v4, "user"

    invoke-virtual {v11, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/UserManager;

    .line 459
    .local v23, userManager:Landroid/os/UserManager;
    invoke-virtual/range {v23 .. v23}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v24

    .line 461
    .local v24, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 462
    .local v6, currentUser:I
    new-instance v12, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v12, v6}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 466
    .local v12, currentEnv:Landroid/os/Environment$UserEnvironment;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1000(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$700(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const/4 v15, 0x1

    .line 468
    .local v15, measureMedia:Z
    :goto_2
    const-string v4, "StorageMeasurement"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "measureMedia is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "mIsInternal is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    move-object/from16 v26, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static/range {v26 .. v26}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1000(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " isEmulated: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " mIsPrimary is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    move-object/from16 v26, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static/range {v26 .. v26}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$700(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    if-eqz v15, :cond_6

    .line 471
    invoke-static {}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1100()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 472
    .local v20, type:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/os/Environment$UserEnvironment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 473
    .local v16, path:Ljava/io/File;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    #calls: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1200(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v18

    .line 474
    .local v18, size:J
    iget-object v4, v5, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 466
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #measureMedia:Z
    .end local v16           #path:Ljava/io/File;
    .end local v18           #size:J
    .end local v20           #type:Ljava/lang/String;
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 479
    .restart local v15       #measureMedia:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1000(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$700(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 480
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1000(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v12}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    .line 482
    .restart local v16       #path:Ljava/io/File;
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    #calls: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v4, v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1300(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    iput-wide v0, v5, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    .line 487
    .end local v16           #path:Ljava/io/File;
    :cond_8
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/UserInfo;

    .line 488
    .local v21, user:Landroid/content/pm/UserInfo;
    new-instance v22, Landroid/os/Environment$UserEnvironment;

    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 489
    .local v22, userEnv:Landroid/os/Environment$UserEnvironment;
    invoke-virtual/range {v22 .. v22}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, p1

    #calls: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v0, v4}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1200(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v18

    .line 490
    .restart local v18       #size:J
    iget-object v4, v5, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-wide/from16 v1, v18

    #calls: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V
    invoke-static {v4, v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$000(Landroid/util/SparseLongArray;IJ)V

    goto :goto_5

    .line 480
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v18           #size:J
    .end local v21           #user:Landroid/content/pm/UserInfo;
    .end local v22           #userEnv:Landroid/os/Environment$UserEnvironment;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v16

    goto :goto_4

    .line 494
    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_a
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 495
    .local v17, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1000(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$700(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 496
    :cond_b
    const/16 v4, 0x2200

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v10

    .line 500
    .local v10, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v25

    mul-int v8, v4, v25

    .line 501
    .local v8, count:I
    new-instance v3, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$StatsObserver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1000(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v4

    invoke-direct/range {v3 .. v8}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$StatsObserver;-><init>(ZLcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;ILandroid/os/Message;I)V

    .line 504
    .local v3, observer:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$StatsObserver;
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v13           #i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/UserInfo;

    .line 505
    .restart local v21       #user:Landroid/content/pm/UserInfo;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 506
    .local v9, app:Landroid/content/pm/ApplicationInfo;
    iget-object v4, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    goto :goto_6

    .line 511
    .end local v3           #observer:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$StatsObserver;
    .end local v8           #count:I
    .end local v9           #app:Landroid/content/pm/ApplicationInfo;
    .end local v10           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v21           #user:Landroid/content/pm/UserInfo;
    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_d
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 329
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 331
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    if-eqz v3, :cond_1

    .line 332
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    #calls: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sendExactUpdate(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$300(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_0

    .line 336
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    .line 337
    .local v0, context:Landroid/content/Context;
    :cond_2
    if-eqz v0, :cond_0

    .line 341
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 342
    :try_start_0
    iget-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_3

    .line 343
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 344
    const/4 v3, 0x2

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    invoke-virtual {p0, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 350
    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 346
    :cond_3
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v5, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 347
    .local v2, service:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 354
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #service:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/IMediaContainerService;

    .line 355
    .local v1, imcs:Lcom/android/internal/app/IMediaContainerService;
    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;)V

    .line 356
    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V

    goto :goto_0

    .line 360
    .end local v1           #imcs:Lcom/android/internal/app/IMediaContainerService;
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 361
    :try_start_2
    iget-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_6

    .line 362
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    .line 363
    .restart local v0       #context:Landroid/content/Context;
    :cond_4
    if-nez v0, :cond_5

    .line 364
    monitor-exit v4

    goto :goto_0

    .line 370
    .end local v0           #context:Landroid/content/Context;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 367
    .restart local v0       #context:Landroid/content/Context;
    :cond_5
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    .line 368
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 370
    .end local v0           #context:Landroid/content/Context;
    :cond_6
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 374
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    iput-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 375
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    #calls: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sendExactUpdate(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$300(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto/16 :goto_0

    .line 379
    :pswitch_4
    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    goto/16 :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
