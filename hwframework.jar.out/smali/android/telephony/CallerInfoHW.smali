.class public Landroid/telephony/CallerInfoHW;
.super Ljava/lang/Object;
.source "CallerInfoHW.java"


# static fields
.field public static final MIN_MATCH:I = 0x7

.field private static final TAG:Ljava/lang/String; = "CallerInfo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareNums(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "num1"
    .parameter "num2"

    .prologue
    .line 29
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCallerIndex(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2
    .parameter "cursor"
    .parameter "compNum"

    .prologue
    .line 32
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCallerIndex(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "cursor"
    .parameter "compNum"
    .parameter "columnName"

    .prologue
    .line 35
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
