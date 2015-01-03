.class Lcom/android/settings_ex/SystemUpgradeSelect$1;
.super Ljava/lang/Object;
.source "SystemUpgradeSelect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SystemUpgradeSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SystemUpgradeSelect;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SystemUpgradeSelect;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/settings_ex/SystemUpgradeSelect$1;->this$0:Lcom/android/settings_ex/SystemUpgradeSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings_ex/SystemUpgradeSelect$1;->this$0:Lcom/android/settings_ex/SystemUpgradeSelect;

    #calls: Lcom/android/settings_ex/SystemUpgradeSelect;->closeCurrentActivity()V
    invoke-static {v0}, Lcom/android/settings_ex/SystemUpgradeSelect;->access$000(Lcom/android/settings_ex/SystemUpgradeSelect;)V

    .line 22
    return-void
.end method
