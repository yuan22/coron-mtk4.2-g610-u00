.class public Landroid/appwidget/AppWidgetHost;
.super Ljava/lang/Object;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHost$UpdateHandler;,
        Landroid/appwidget/AppWidgetHost$Callbacks;
    }
.end annotation


# static fields
.field static final HANDLE_PROVIDERS_CHANGED:I = 0x3

.field static final HANDLE_PROVIDER_CHANGED:I = 0x2

.field static final HANDLE_UPDATE:I = 0x1

.field static final HANDLE_VIEW_DATA_CHANGED:I = 0x4

.field static sService:Lcom/android/internal/appwidget/IAppWidgetService;

.field static final sServiceLock:Ljava/lang/Object;


# instance fields
.field mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

.field mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mHandler:Landroid/os/Handler;

.field mHostId:I

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field mPackageName:Ljava/lang/String;

.field private mUser:Landroid/os/UserHandle;

.field final mViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/appwidget/AppWidgetHostView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "hostId"

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V
    .locals 1
    .parameter "context"
    .parameter "hostId"
    .parameter "handler"
    .parameter "looper"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Landroid/appwidget/AppWidgetHost$Callbacks;

    invoke-direct {v0, p0}, Landroid/appwidget/AppWidgetHost$Callbacks;-><init>(Landroid/appwidget/AppWidgetHost;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    .line 142
    iput-object p1, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    .line 143
    iput p2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    .line 144
    iput-object p3, p0, Landroid/appwidget/AppWidgetHost;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 145
    new-instance v0, Landroid/appwidget/AppWidgetHost$UpdateHandler;

    invoke-direct {v0, p0, p4}, Landroid/appwidget/AppWidgetHost$UpdateHandler;-><init>(Landroid/appwidget/AppWidgetHost;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 148
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mUser:Landroid/os/UserHandle;

    .line 150
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->bindService()V

    .line 151
    return-void
.end method

.method static synthetic access$000(Landroid/appwidget/AppWidgetHost;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHost;->isLocalBinder()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/appwidget/AppWidgetHost;)Landroid/os/UserHandle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public static allocateAppWidgetIdForSystem(I)I
    .locals 5
    .parameter "hostId"

    .prologue
    .line 257
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->checkCallerIsSystem()V

    .line 259
    :try_start_0
    sget-object v3, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v3, :cond_0

    .line 260
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->bindService()V

    .line 262
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v2

    .line 264
    .local v2, systemContext:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, packageName:Ljava/lang/String;
    sget-object v3, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v3, v1, p0}, Lcom/android/internal/appwidget/IAppWidgetService;->allocateAppWidgetId(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 266
    .end local v1           #packageName:Ljava/lang/String;
    .end local v2           #systemContext:Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "system server dead?"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static bindService()V
    .locals 3

    .prologue
    .line 159
    sget-object v2, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 160
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_0

    .line 161
    const-string v1, "appwidget"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 162
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v1

    sput-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 164
    :cond_0
    monitor-exit v2

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static checkCallerIsSystem()V
    .locals 4

    .prologue
    .line 288
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 289
    .local v0, uid:I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 290
    :cond_0
    return-void

    .line 292
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disallowed call for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static deleteAllHosts()V
    .locals 3

    .prologue
    .line 357
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAllHosts()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static deleteAppWidgetIdForSystem(I)V
    .locals 3
    .parameter "appWidgetId"

    .prologue
    .line 319
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->checkCallerIsSystem()V

    .line 321
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_0

    .line 322
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->bindService()V

    .line 324
    :cond_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p0}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isLocalBinder()Z
    .locals 2

    .prologue
    .line 296
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public allocateAppWidgetId()I
    .locals 4

    .prologue
    .line 240
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 241
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    .line 243
    :cond_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->allocateAppWidgetId(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected clearViews()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 461
    return-void
.end method

.method public final createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 6
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "appWidget"

    .prologue
    .line 370
    invoke-virtual {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    .line 372
    .local v1, view:Landroid/appwidget/AppWidgetHostView;
    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/appwidget/AppWidgetHostView;->setUserId(I)V

    .line 373
    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v1, v3}, Landroid/appwidget/AppWidgetHostView;->setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 374
    invoke-virtual {v1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 375
    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    monitor-enter v4

    .line 376
    :try_start_0
    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :try_start_1
    sget-object v3, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v3, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetViews(I)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 381
    .local v2, views:Landroid/widget/RemoteViews;
    if-eqz v2, :cond_0

    .line 382
    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews;->setUser(Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 388
    :cond_0
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 390
    return-object v1

    .line 377
    .end local v2           #views:Landroid/widget/RemoteViews;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "system server dead?"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public deleteAppWidgetId(I)V
    .locals 4
    .parameter "appWidgetId"

    .prologue
    .line 303
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    monitor-enter v2

    .line 304
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :try_start_1
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAppWidgetId(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 311
    :try_start_2
    monitor-exit v2

    .line 312
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "system server dead?"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 311
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public deleteHost()V
    .locals 3

    .prologue
    .line 340
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteHost(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAppWidgetIds()[I
    .locals 3

    .prologue
    .line 278
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_0

    .line 279
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->bindService()V

    .line 281
    :cond_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIdsForHost(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 2
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "appWidget"

    .prologue
    .line 399
    new-instance v0, Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V

    return-object v0
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 4
    .parameter "appWidgetId"
    .parameter "appWidget"

    .prologue
    .line 411
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 413
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 415
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 417
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 420
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    monitor-enter v2

    .line 421
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 422
    .local v0, v:Landroid/appwidget/AppWidgetHostView;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->resetAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 426
    :cond_0
    return-void

    .line 422
    .end local v0           #v:Landroid/appwidget/AppWidgetHostView;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onProvidersChanged()V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method public setUserId(I)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 155
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mUser:Landroid/os/UserHandle;

    .line 156
    return-void
.end method

.method public startListening()V
    .locals 1

    .prologue
    .line 172
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHost;->startListeningAsUser(I)V

    .line 173
    return-void
.end method

.method public startListeningAsUser(I)V
    .locals 10
    .parameter "userId"

    .prologue
    .line 182
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v4, updatedViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    .line 188
    :cond_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    move v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/appwidget/IAppWidgetService;->startListeningAsUser(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 195
    .local v9, updatedIds:[I
    array-length v6, v9

    .line 196
    .local v6, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v6, :cond_2

    .line 197
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->setUser(Landroid/os/UserHandle;)V

    .line 200
    :cond_1
    aget v1, v9, v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0, v1, v0}, Landroid/appwidget/AppWidgetHost;->updateAppWidgetView(ILandroid/widget/RemoteViews;)V

    .line 196
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 191
    .end local v6           #N:I
    .end local v8           #i:I
    .end local v9           #updatedIds:[I
    :catch_0
    move-exception v7

    .line 192
    .local v7, e:Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "system server dead?"

    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 202
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v6       #N:I
    .restart local v8       #i:I
    .restart local v9       #updatedIds:[I
    :cond_2
    return-void
.end method

.method public stopListening()V
    .locals 4

    .prologue
    .line 210
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->stopListeningAsUser(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopListeningAsUser(I)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 224
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v1, v2, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->stopListeningAsUser(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->clearViews()V

    .line 231
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method updateAppWidgetView(ILandroid/widget/RemoteViews;)V
    .locals 4
    .parameter "appWidgetId"
    .parameter "views"

    .prologue
    .line 438
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    monitor-enter v2

    .line 439
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 440
    .local v0, v:Landroid/appwidget/AppWidgetHostView;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 444
    :cond_0
    return-void

    .line 440
    .end local v0           #v:Landroid/appwidget/AppWidgetHostView;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method viewDataChanged(II)V
    .locals 4
    .parameter "appWidgetId"
    .parameter "viewId"

    .prologue
    .line 448
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    monitor-enter v2

    .line 449
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 450
    .local v0, v:Landroid/appwidget/AppWidgetHostView;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->viewDataChanged(I)V

    .line 454
    :cond_0
    return-void

    .line 450
    .end local v0           #v:Landroid/appwidget/AppWidgetHostView;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
