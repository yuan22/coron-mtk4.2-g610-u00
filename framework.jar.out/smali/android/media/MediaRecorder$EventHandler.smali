.class Landroid/media/MediaRecorder$EventHandler;
.super Landroid/os/Handler;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field private static final MEDIA_RECORDER_EVENT_ERROR:I = 0x1

.field private static final MEDIA_RECORDER_EVENT_INFO:I = 0x2

.field private static final MEDIA_RECORDER_EVENT_LIST_END:I = 0x63

.field private static final MEDIA_RECORDER_EVENT_LIST_START:I = 0x1

.field private static final MEDIA_RECORDER_TRACK_EVENT_ERROR:I = 0x64

.field private static final MEDIA_RECORDER_TRACK_EVENT_INFO:I = 0x65

.field private static final MEDIA_RECORDER_TRACK_EVENT_LIST_END:I = 0x3e8

.field private static final MEDIA_RECORDER_TRACK_EVENT_LIST_START:I = 0x64


# instance fields
.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field final synthetic this$0:Landroid/media/MediaRecorder;


# direct methods
.method public constructor <init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "mr"
    .parameter "looper"

    .prologue
    .line 957
    iput-object p1, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    .line 958
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 959
    iput-object p2, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 960
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 978
    iget-object v1, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    #getter for: Landroid/media/MediaRecorder;->mNativeContext:I
    invoke-static {v1}, Landroid/media/MediaRecorder;->access$000(Landroid/media/MediaRecorder;)I

    move-result v1

    if-nez v1, :cond_1

    .line 979
    const-string v1, "MediaRecorder"

    const-string/jumbo v2, "mediarecorder went away with unhandled events"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 982
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1003
    const-string v1, "MediaRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 985
    :sswitch_0
    iget-object v1, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    #getter for: Landroid/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;
    invoke-static {v1}, Landroid/media/MediaRecorder;->access$100(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 986
    iget-object v1, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    #getter for: Landroid/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;
    invoke-static {v1}, Landroid/media/MediaRecorder;->access$100(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v4}, Landroid/media/MediaRecorder$OnErrorListener;->onError(Landroid/media/MediaRecorder;II)V

    goto :goto_0

    .line 992
    :sswitch_1
    iget-object v1, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    #getter for: Landroid/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;
    invoke-static {v1}, Landroid/media/MediaRecorder;->access$200(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 995
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    #getter for: Landroid/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;
    invoke-static {v1}, Landroid/media/MediaRecorder;->access$200(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v4}, Landroid/media/MediaRecorder$OnInfoListener;->onInfo(Landroid/media/MediaRecorder;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 996
    :catch_0
    move-exception v0

    .line 997
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MediaRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to call onInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 982
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
    .end sparse-switch
.end method
