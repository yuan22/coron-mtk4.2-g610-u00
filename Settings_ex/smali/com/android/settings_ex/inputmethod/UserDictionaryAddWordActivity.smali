.class public Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordActivity;
.super Landroid/app/Activity;
.source "UserDictionaryAddWordActivity.java"


# static fields
.field public static final MODE_EDIT_ACTION:Ljava/lang/String; = "com.android.settings_ex.USER_DICTIONARY_EDIT"

.field public static final MODE_INSERT_ACTION:Ljava/lang/String; = "com.android.settings_ex.USER_DICTIONARY_INSERT"

.field private static final STATE_KEY_IS_OPEN:Ljava/lang/String; = "isOpen"


# instance fields
.field private mContents:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCancel(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 82
    return-void
.end method

.method public onClickConfirm(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;->apply(Landroid/content/Context;)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 87
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v4, 0x7f0400a0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 41
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 73
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.android.settings_ex.USER_DICTIONARY_EDIT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    const/4 v3, 0x0

    .line 64
    .local v3, mode:I
    :goto_1
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 65
    .local v1, args:Landroid/os/Bundle;
    const-string v4, "mode"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 72
    :cond_1
    new-instance v4, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;

    goto :goto_0

    .line 50
    .end local v1           #args:Landroid/os/Bundle;
    .end local v3           #mode:I
    :cond_2
    const-string v4, "com.android.settings_ex.USER_DICTIONARY_INSERT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 51
    const/4 v3, 0x1

    .restart local v3       #mode:I
    goto :goto_1

    .line 56
    .end local v3           #mode:I
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;->saveStateIntoBundle(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method
