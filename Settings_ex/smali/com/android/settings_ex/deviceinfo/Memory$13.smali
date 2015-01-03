.class Lcom/android/settings_ex/deviceinfo/Memory$13;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 992
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Memory$13;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory$13;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #calls: Lcom/android/settings_ex/deviceinfo/Memory;->dynamicShowDefaultWriteCategory()V
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/Memory;->access$1900(Lcom/android/settings_ex/deviceinfo/Memory;)V

    .line 995
    return-void
.end method
