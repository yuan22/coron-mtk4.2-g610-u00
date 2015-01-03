.class Lcom/android/settings_ex/SystemUpgradeFinal$1;
.super Ljava/lang/Object;
.source "SystemUpgradeFinal.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SystemUpgradeFinal;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SystemUpgradeFinal;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SystemUpgradeFinal;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings_ex/SystemUpgradeFinal$1;->this$0:Lcom/android/settings_ex/SystemUpgradeFinal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/SystemUpgradeFinal$1;->this$0:Lcom/android/settings_ex/SystemUpgradeFinal;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 65
    return-void
.end method
