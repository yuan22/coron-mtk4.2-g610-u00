.class Lcom/huawei/android/hardware/fmradio/FmRxEventListner;
.super Ljava/lang/Object;
.source "FmRxEventListner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;
    }
.end annotation


# static fields
.field private static final EVENT_LISTEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FMRadio"


# instance fields
.field private mThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public startListner(ILcom/huawei/android/hardware/fmradio/FmRxEvCallbacks;)V
    .locals 1
    .parameter "fd"
    .parameter "cb"

    .prologue
    .line 62
    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$1;-><init>(Lcom/huawei/android/hardware/fmradio/FmRxEventListner;ILcom/huawei/android/hardware/fmradio/FmRxEvCallbacks;)V

    iput-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner;->mThread:Ljava/lang/Thread;

    .line 162
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 163
    return-void
.end method

.method public stopListener()V
    .locals 2

    .prologue
    .line 171
    const-string v0, "FMRadio"

    const-string v1, "stopping the Listener\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 175
    :cond_0
    return-void
.end method
