.class Lcom/android/settings_ex/wifi/WifiApDialog$2;
.super Ljava/lang/Object;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiApDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiApDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiApDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$2;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 291
    if-nez p3, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog$2;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/wifi/WifiApDialog;->mChannelWidth:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->access$202(Lcom/android/settings_ex/wifi/WifiApDialog;I)I

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog$2;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings_ex/wifi/WifiApDialog;->mChannelWidth:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->access$202(Lcom/android/settings_ex/wifi/WifiApDialog;I)I

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 298
    return-void
.end method
