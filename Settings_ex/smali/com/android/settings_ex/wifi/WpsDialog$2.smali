.class Lcom/android/settings_ex/wifi/WpsDialog$2;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WpsDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WpsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WpsDialog$2;->this$0:Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog$2;->this$0:Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 157
    return-void
.end method
