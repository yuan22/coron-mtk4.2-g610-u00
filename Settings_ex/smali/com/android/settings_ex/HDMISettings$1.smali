.class Lcom/android/settings_ex/HDMISettings$1;
.super Ljava/lang/Object;
.source "HDMISettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/HDMISettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/HDMISettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/HDMISettings;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings_ex/HDMISettings$1;->this$0:Lcom/android/settings_ex/HDMISettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/HDMISettings$1;->this$0:Lcom/android/settings_ex/HDMISettings;

    check-cast p2, Lcom/mediatek/hdmi/HDMILocalService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/mediatek/hdmi/HDMILocalService$LocalBinder;->getService()Lcom/mediatek/hdmi/HDMILocalService;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;
    invoke-static {v0, v1}, Lcom/android/settings_ex/HDMISettings;->access$002(Lcom/android/settings_ex/HDMISettings;Lcom/mediatek/hdmi/HDMILocalService;)Lcom/mediatek/hdmi/HDMILocalService;

    .line 57
    const-string v0, "hdmi"

    const-string v1, "HDMISettings, HDMILocalService is connected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/HDMISettings$1;->this$0:Lcom/android/settings_ex/HDMISettings;

    #calls: Lcom/android/settings_ex/HDMISettings;->updateSettingsItemEnableStatus()V
    invoke-static {v0}, Lcom/android/settings_ex/HDMISettings;->access$100(Lcom/android/settings_ex/HDMISettings;)V

    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/HDMISettings$1;->this$0:Lcom/android/settings_ex/HDMISettings;

    #calls: Lcom/android/settings_ex/HDMISettings;->updateSelectedResolution()V
    invoke-static {v0}, Lcom/android/settings_ex/HDMISettings;->access$200(Lcom/android/settings_ex/HDMISettings;)V

    .line 60
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/HDMISettings$1;->this$0:Lcom/android/settings_ex/HDMISettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;
    invoke-static {v0, v1}, Lcom/android/settings_ex/HDMISettings;->access$002(Lcom/android/settings_ex/HDMISettings;Lcom/mediatek/hdmi/HDMILocalService;)Lcom/mediatek/hdmi/HDMILocalService;

    .line 52
    return-void
.end method
