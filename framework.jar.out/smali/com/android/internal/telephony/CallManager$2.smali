.class Lcom/android/internal/telephony/CallManager$2;
.super Ljava/lang/Object;
.source "CallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CallManager;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CallManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2676
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$2;->this$0:Lcom/android/internal/telephony/CallManager;

    iput p2, p0, Lcom/android/internal/telephony/CallManager$2;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2678
    const-string v7, "/sys/devices/platform/Accdet_Driver/driver/accdet_call_state"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2680
    .local v0, callStateFilePath:Ljava/lang/String;
    :try_start_0
    iget v7, p0, Lcom/android/internal/telephony/CallManager$2;->val$value:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 2681
    .local v5, state:Ljava/lang/String;
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 2682
    .local v3, fw:Ljava/io/FileWriter;
    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2683
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 2684
    const-string v7, "CallManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Call state for Accdet is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2691
    .end local v3           #fw:Ljava/io/FileWriter;
    .end local v5           #state:Ljava/lang/String;
    :goto_0
    const-string v7, "/sys/devices/platform/mtk-kpd/driver/kpd_call_state"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2693
    .local v1, callStateFilePath2:Ljava/lang/String;
    :try_start_1
    iget v7, p0, Lcom/android/internal/telephony/CallManager$2;->val$value:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 2694
    .local v6, state2:Ljava/lang/String;
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 2695
    .local v4, fw2:Ljava/io/FileWriter;
    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2696
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 2697
    const-string v7, "CallManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Call state for kpd is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2702
    .end local v4           #fw2:Ljava/io/FileWriter;
    .end local v6           #state2:Ljava/lang/String;
    :goto_1
    return-void

    .line 2685
    .end local v1           #callStateFilePath2:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2686
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "CallManager"

    const-string v8, ""

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2698
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #callStateFilePath2:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 2699
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v7, "CallManager"

    const-string v8, ""

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
