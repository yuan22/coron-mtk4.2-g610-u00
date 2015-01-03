.class Lcom/android/settings_ex/ApnEditor$4;
.super Ljava/lang/Object;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ApnEditor;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ApnEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 927
    iput-object p1, p0, Lcom/android/settings_ex/ApnEditor$4;->this$0:Lcom/android/settings_ex/ApnEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor$4;->this$0:Lcom/android/settings_ex/ApnEditor;

    const/4 v1, 0x0

    #calls: Lcom/android/settings_ex/ApnEditor;->validateAndSave(Z)Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/ApnEditor;->access$2000(Lcom/android/settings_ex/ApnEditor;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor$4;->this$0:Lcom/android/settings_ex/ApnEditor;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 932
    :cond_0
    return-void
.end method
