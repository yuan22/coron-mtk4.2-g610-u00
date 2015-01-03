.class Lcom/mediatek/audioprofile/VibrationIntensityService$1;
.super Lcom/mediatek/audioprofile/IVibrationIntensityService$Stub;
.source "VibrationIntensityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/VibrationIntensityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/VibrationIntensityService;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/VibrationIntensityService;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mediatek/audioprofile/VibrationIntensityService$1;->this$0:Lcom/mediatek/audioprofile/VibrationIntensityService;

    invoke-direct {p0}, Lcom/mediatek/audioprofile/IVibrationIntensityService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public changeVibrationIntensity(I)Z
    .locals 2
    .parameter "level"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityService$1;->this$0:Lcom/mediatek/audioprofile/VibrationIntensityService;

    invoke-static {}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;->getInstance()Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;

    move-result-object v1

    #setter for: Lcom/mediatek/audioprofile/VibrationIntensityService;->mVibrationIntensityManager:Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;
    invoke-static {v0, v1}, Lcom/mediatek/audioprofile/VibrationIntensityService;->access$002(Lcom/mediatek/audioprofile/VibrationIntensityService;Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;)Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;

    .line 56
    iget-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityService$1;->this$0:Lcom/mediatek/audioprofile/VibrationIntensityService;

    #getter for: Lcom/mediatek/audioprofile/VibrationIntensityService;->mVibrationIntensityManager:Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/VibrationIntensityService;->access$000(Lcom/mediatek/audioprofile/VibrationIntensityService;)Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "Settings/VibrationIntensityService"

    const-string v1, "changeVibrationIntensity mVibrationIntensityManager != null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityService$1;->this$0:Lcom/mediatek/audioprofile/VibrationIntensityService;

    #getter for: Lcom/mediatek/audioprofile/VibrationIntensityService;->mVibrationIntensityManager:Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/VibrationIntensityService;->access$000(Lcom/mediatek/audioprofile/VibrationIntensityService;)Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;->changeVibrationIntensity(I)Z

    move-result v0

    .line 61
    :goto_0
    return v0

    .line 60
    :cond_0
    const-string v0, "Settings/VibrationIntensityService"

    const-string v1, "changeVibrationIntensity mVibrationIntensityManager == null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x0

    goto :goto_0
.end method
