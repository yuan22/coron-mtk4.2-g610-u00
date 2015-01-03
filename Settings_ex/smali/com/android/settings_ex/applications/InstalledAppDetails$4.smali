.class Lcom/android/settings_ex/applications/InstalledAppDetails$4;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 1667
    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$4;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context1"
    .parameter "intent"

    .prologue
    .line 1670
    const-string v0, "InstalledAppDetails"

    const-string v1, "dynamic swap, update the UI about SD card"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$4;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    #calls: Lcom/android/settings_ex/applications/InstalledAppDetails;->refeshUi2SD()V
    invoke-static {v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$1600(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    .line 1673
    return-void
.end method
