.class Lcom/android/settings_ex/ApnSettings$1;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Lcom/android/settings_ex/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ApnSettings;
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
    .line 160
    iput-object p1, p0, Lcom/android/settings_ex/ApnSettings$1;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRcseOnlyApnStateChanged(Z)V
    .locals 3
    .parameter "isEnabled"

    .prologue
    .line 163
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRcseOnlyApnStateChanged()-current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings$1;->this$0:Lcom/android/settings_ex/ApnSettings;

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings$1;->this$0:Lcom/android/settings_ex/ApnSettings;

    iget v1, v1, Lcom/android/settings_ex/ApnSettings;->mSimId:I

    #calls: Lcom/android/settings_ex/ApnSettings;->fillList(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/ApnSettings;->access$000(Lcom/android/settings_ex/ApnSettings;I)V

    .line 165
    return-void
.end method
