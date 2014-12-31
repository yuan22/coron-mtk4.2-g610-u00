.class public Lcom/huawei/android/widget/FastScrollerEx$ScrollFade;
.super Ljava/lang/Object;
.source "FastScrollerEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/widget/FastScrollerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollFade"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/widget/FastScrollerEx;


# direct methods
.method public constructor <init>(Lcom/huawei/android/widget/FastScrollerEx;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/huawei/android/widget/FastScrollerEx$ScrollFade;->this$0:Lcom/huawei/android/widget/FastScrollerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
