.class Lcom/android/settings_ex/ApnSettings$4;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ApnSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Lcom/android/settings_ex/ApnSettings$4;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "a0"
    .parameter "a1"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings$4;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 826
    return-void
.end method
