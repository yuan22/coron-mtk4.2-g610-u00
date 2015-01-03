.class Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;
.super Landroid/preference/CheckBoxPreference;
.source "DataUsageMeteredSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/net/DataUsageMeteredSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeteredPreference"
.end annotation


# instance fields
.field private mBinding:Z

.field private final mTemplate:Landroid/net/NetworkTemplate;

.field final synthetic this$0:Lcom/android/settings_ex/net/DataUsageMeteredSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/net/DataUsageMeteredSettings;Landroid/content/Context;Landroid/net/NetworkTemplate;)V
    .locals 7
    .parameter
    .parameter "context"
    .parameter "template"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 116
    iput-object p1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;->this$0:Lcom/android/settings_ex/net/DataUsageMeteredSettings;

    .line 117
    invoke-direct {p0, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 118
    iput-object p3, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;->mTemplate:Landroid/net/NetworkTemplate;

    .line 120
    invoke-virtual {p0, v5}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 122
    iput-boolean v6, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    .line 123
    #getter for: Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;
    invoke-static {p1}, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->access$000(Lcom/android/settings_ex/net/DataUsageMeteredSettings;)Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 124
    .local v0, policy:Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_1

    .line 125
    iget-wide v1, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p0, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 127
    invoke-virtual {p0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 134
    :goto_0
    iput-boolean v5, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    .line 135
    return-void

    .line 129
    :cond_0
    iget-boolean v1, v0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {p0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected notifyChanged()V
    .locals 3

    .prologue
    .line 139
    invoke-super {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 140
    iget-boolean v0, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;->this$0:Lcom/android/settings_ex/net/DataUsageMeteredSettings;

    #getter for: Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;
    invoke-static {v0}, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->access$000(Lcom/android/settings_ex/net/DataUsageMeteredSettings;)Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setPolicyMetered(Landroid/net/NetworkTemplate;Z)V

    .line 143
    :cond_0
    return-void
.end method
