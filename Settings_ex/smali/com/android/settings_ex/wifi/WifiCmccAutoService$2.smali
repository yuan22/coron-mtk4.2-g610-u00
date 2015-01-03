.class Lcom/android/settings_ex/wifi/WifiCmccAutoService$2;
.super Ljava/lang/Object;
.source "WifiCmccAutoService.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiCmccAutoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiCmccAutoService;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$2;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoService$2;->this$0:Lcom/android/settings_ex/wifi/WifiCmccAutoService;

    const v1, 0x7f0b0490

    #calls: Lcom/android/settings_ex/wifi/WifiCmccAutoService;->showTextToast(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/WifiCmccAutoService;->access$700(Lcom/android/settings_ex/wifi/WifiCmccAutoService;I)V

    .line 199
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method
