.class Lcom/android/settings_ex/applications/RunningProcessesView$1;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/RunningProcessesView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/RunningProcessesView;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$1;->this$0:Lcom/android/settings_ex/applications/RunningProcessesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$1;->this$0:Lcom/android/settings_ex/applications/RunningProcessesView;

    #calls: Lcom/android/settings_ex/applications/RunningProcessesView;->StopAllApplication()V
    invoke-static {v0}, Lcom/android/settings_ex/applications/RunningProcessesView;->access$100(Lcom/android/settings_ex/applications/RunningProcessesView;)V

    .line 412
    return-void
.end method
