.class Lcom/android/settings_ex/SystemUpgradeFinal$ResultHandler;
.super Landroid/os/Handler;
.source "SystemUpgradeFinal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SystemUpgradeFinal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultHandler"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/settings_ex/SystemUpgradeFinal$ResultHandler;->mActivity:Landroid/app/Activity;

    .line 80
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/SystemUpgradeFinal$ResultHandler;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 88
    :cond_0
    return-void
.end method
