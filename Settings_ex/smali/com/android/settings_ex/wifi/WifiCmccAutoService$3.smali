.class Lcom/android/settings_ex/wifi/WifiCmccAutoService$3;
.super Ljava/lang/Object;
.source "WifiCmccAutoService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiCmccAutoService;->showTextToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiCmccAutoService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$3;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$3;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$3;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    #getter for: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$1300(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$3;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$3;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$3;->val$msg:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$1302(Lcom/android/settings_ex/wifi/WifiCmccAutoService;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 622
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$3;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    #getter for: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$1300(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 624
    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$3;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    #getter for: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$1300(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$3;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
