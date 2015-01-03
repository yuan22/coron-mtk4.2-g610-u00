.class Lcom/android/settings_ex/HomeSettings$1;
.super Ljava/lang/Object;
.source "HomeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/HomeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/HomeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings_ex/HomeSettings$1;->this$0:Lcom/android/settings_ex/HomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 109
    .local v0, index:I
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings$1;->this$0:Lcom/android/settings_ex/HomeSettings;

    iget-object v2, v2, Lcom/android/settings_ex/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    .line 110
    .local v1, pref:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    iget-boolean v2, v1, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->isChecked:Z

    if-nez v2, :cond_0

    .line 111
    iget-boolean v2, v1, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->isSystem:Z

    if-nez v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings$1;->this$0:Lcom/android/settings_ex/HomeSettings;

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/HomeSettings;->buildWarningDialog(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings$1;->this$0:Lcom/android/settings_ex/HomeSettings;

    iput-object v1, v2, Lcom/android/settings_ex/HomeSettings;->mTempSelectedHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings$1;->this$0:Lcom/android/settings_ex/HomeSettings;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/HomeSettings;->setAndRestartHomeApp(Lcom/android/settings_ex/HomeSettings$HomeAppPreference;)V

    goto :goto_0
.end method
