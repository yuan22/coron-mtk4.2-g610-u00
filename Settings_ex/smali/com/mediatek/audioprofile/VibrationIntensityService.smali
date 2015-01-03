.class public Lcom/mediatek/audioprofile/VibrationIntensityService;
.super Landroid/app/Service;
.source "VibrationIntensityService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Settings/VibrationIntensityService"


# instance fields
.field private mBinder:Lcom/mediatek/audioprofile/IVibrationIntensityService$Stub;

.field private mVibrationIntensityManager:Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    new-instance v0, Lcom/mediatek/audioprofile/VibrationIntensityService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/VibrationIntensityService$1;-><init>(Lcom/mediatek/audioprofile/VibrationIntensityService;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityService;->mBinder:Lcom/mediatek/audioprofile/IVibrationIntensityService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/audioprofile/VibrationIntensityService;)Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityService;->mVibrationIntensityManager:Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/audioprofile/VibrationIntensityService;Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;)Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mediatek/audioprofile/VibrationIntensityService;->mVibrationIntensityManager:Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;

    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 112
    const-string v0, "Settings/VibrationIntensityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind mBinder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/VibrationIntensityService;->mBinder:Lcom/mediatek/audioprofile/IVibrationIntensityService$Stub;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityService;->mBinder:Lcom/mediatek/audioprofile/IVibrationIntensityService$Stub;

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    const-string v3, "isByIntent"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 86
    .local v1, isByIntent:Z
    const-string v3, "level"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 87
    .local v2, level:I
    if-eqz v1, :cond_0

    .line 89
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/VibrationIntensityService;->mBinder:Lcom/mediatek/audioprofile/IVibrationIntensityService$Stub;

    invoke-virtual {v3, v2}, Lcom/mediatek/audioprofile/IVibrationIntensityService$Stub;->changeVibrationIntensity(I)Z

    .line 90
    const-string v3, "Settings/VibrationIntensityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartCommand change level to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v1           #isByIntent:Z
    .end local v2           #level:I
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    return v3

    .line 91
    .restart local v1       #isByIntent:Z
    .restart local v2       #level:I
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
