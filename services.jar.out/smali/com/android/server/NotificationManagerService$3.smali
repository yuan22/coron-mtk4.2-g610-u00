.class Lcom/android/server/NotificationManagerService$3;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1763
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$3;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$3;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {p2}, Lcom/mediatek/audioprofile/IVibrationIntensityService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/audioprofile/IVibrationIntensityService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/NotificationManagerService;->mVibrationIntensityService:Lcom/mediatek/audioprofile/IVibrationIntensityService;

    .line 1779
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$3;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/NotificationManagerService;->mVibrationIntensityService:Lcom/mediatek/audioprofile/IVibrationIntensityService;

    .line 1792
    return-void
.end method
