.class Lcom/android/settings_ex/AccessibilitySettings$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/AccessibilitySettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 840
    iput-object p1, p0, Lcom/android/settings_ex/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/AccessibilitySettings;Lcom/android/settings_ex/AccessibilitySettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 840
    invoke-direct {p0, p1}, Lcom/android/settings_ex/AccessibilitySettings$SettingsPackageMonitor;-><init>(Lcom/android/settings_ex/AccessibilitySettings;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 844
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    #getter for: Lcom/android/settings_ex/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/AccessibilitySettings;->access$500(Lcom/android/settings_ex/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 845
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    #getter for: Lcom/android/settings_ex/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/AccessibilitySettings;->access$500(Lcom/android/settings_ex/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 846
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 850
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    #getter for: Lcom/android/settings_ex/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/AccessibilitySettings;->access$500(Lcom/android/settings_ex/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 851
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    #getter for: Lcom/android/settings_ex/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/AccessibilitySettings;->access$500(Lcom/android/settings_ex/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 852
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 856
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    #getter for: Lcom/android/settings_ex/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/AccessibilitySettings;->access$500(Lcom/android/settings_ex/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 857
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    #getter for: Lcom/android/settings_ex/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/AccessibilitySettings;->access$500(Lcom/android/settings_ex/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 858
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 862
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    #getter for: Lcom/android/settings_ex/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/AccessibilitySettings;->access$500(Lcom/android/settings_ex/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 863
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    #getter for: Lcom/android/settings_ex/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/AccessibilitySettings;->access$500(Lcom/android/settings_ex/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 864
    return-void
.end method
