.class Lcom/android/settings_ex/deviceinfo/StatusGemini$MyHandler;
.super Landroid/os/Handler;
.source "StatusGemini.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/StatusGemini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mStatus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings_ex/deviceinfo/StatusGemini;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/deviceinfo/StatusGemini;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StatusGemini$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    .line 115
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x1f4

    .line 119
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StatusGemini$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StatusGemini;

    .line 120
    .local v0, status:Lcom/android/settings_ex/deviceinfo/StatusGemini;
    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v3, v1, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StatusGemini;->updateTimes()V

    .line 125
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
