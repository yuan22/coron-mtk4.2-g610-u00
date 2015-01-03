.class public Lcom/android/settings_ex/ApnPreference;
.super Landroid/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field static final TAG:Ljava/lang/String; = "ApnPreference"

.field private static sCurrentChecked:Landroid/widget/CompoundButton;

.field private static sIsCU:Z

.field private static sSelectedKey:Ljava/lang/String;


# instance fields
.field private mEditable:Z

.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z

.field private mSimId:I

.field private mSourceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    sput-object v0, Lcom/android/settings_ex/ApnPreference;->sSelectedKey:Ljava/lang/String;

    .line 68
    sput-object v0, Lcom/android/settings_ex/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/ApnPreference;->sIsCU:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 69
    iput-boolean v1, p0, Lcom/android/settings_ex/ApnPreference;->mProtectFromCheckedChange:Z

    .line 70
    iput-boolean v2, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/ApnPreference;->mSourceType:I

    .line 73
    iput v1, p0, Lcom/android/settings_ex/ApnPreference;->mSimId:I

    .line 75
    iput-boolean v2, p0, Lcom/android/settings_ex/ApnPreference;->mEditable:Z

    .line 64
    invoke-direct {p0}, Lcom/android/settings_ex/ApnPreference;->init()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput-boolean v1, p0, Lcom/android/settings_ex/ApnPreference;->mProtectFromCheckedChange:Z

    .line 70
    iput-boolean v2, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/ApnPreference;->mSourceType:I

    .line 73
    iput v1, p0, Lcom/android/settings_ex/ApnPreference;->mSimId:I

    .line 75
    iput-boolean v2, p0, Lcom/android/settings_ex/ApnPreference;->mEditable:Z

    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/ApnPreference;->init()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    iput-boolean v1, p0, Lcom/android/settings_ex/ApnPreference;->mProtectFromCheckedChange:Z

    .line 70
    iput-boolean v2, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/ApnPreference;->mSourceType:I

    .line 73
    iput v1, p0, Lcom/android/settings_ex/ApnPreference;->mSimId:I

    .line 75
    iput-boolean v2, p0, Lcom/android/settings_ex/ApnPreference;->mEditable:Z

    .line 47
    invoke-direct {p0}, Lcom/android/settings_ex/ApnPreference;->init()V

    .line 48
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 110
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 111
    return-void
.end method


# virtual methods
.method public getSelectable()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    return v0
.end method

.method public getSourceType()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/android/settings_ex/ApnPreference;->mSourceType:I

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 81
    .local v3, view:Landroid/view/View;
    const v5, 0x1010001

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 82
    .local v4, widget:Landroid/view/View;
    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/widget/RadioButton;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 83
    check-cast v1, Landroid/widget/RadioButton;

    .line 84
    .local v1, rb:Landroid/widget/RadioButton;
    iget-boolean v5, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    if-eqz v5, :cond_3

    .line 85
    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/settings_ex/ApnPreference;->sSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 88
    .local v0, isChecked:Z
    if-eqz v0, :cond_0

    .line 89
    sput-object v1, Lcom/android/settings_ex/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 90
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings_ex/ApnPreference;->sSelectedKey:Ljava/lang/String;

    .line 93
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings_ex/ApnPreference;->mProtectFromCheckedChange:Z

    .line 94
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 95
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings_ex/ApnPreference;->mProtectFromCheckedChange:Z

    .line 101
    .end local v0           #isChecked:Z
    .end local v1           #rb:Landroid/widget/RadioButton;
    :cond_1
    :goto_0
    const/high16 v5, 0x101

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 102
    .local v2, textLayout:Landroid/view/View;
    if-eqz v2, :cond_2

    instance-of v5, v2, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_2

    .line 103
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_2
    return-object v3

    .line 97
    .end local v2           #textLayout:Landroid/view/View;
    .restart local v1       #rb:Landroid/widget/RadioButton;
    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/ApnPreference;->sSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 122
    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 127
    :cond_0
    if-eqz p2, :cond_2

    .line 128
    sget-object v0, Lcom/android/settings_ex/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 129
    sget-object v0, Lcom/android/settings_ex/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 131
    :cond_1
    sput-object p1, Lcom/android/settings_ex/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 132
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnPreference;->sSelectedKey:Ljava/lang/String;

    .line 133
    sget-object v0, Lcom/android/settings_ex/ApnPreference;->sSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_2
    sput-object v3, Lcom/android/settings_ex/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 136
    sput-object v3, Lcom/android/settings_ex/ApnPreference;->sSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 141
    if-eqz p1, :cond_0

    const/high16 v6, 0x101

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 146
    .local v3, pos:I
    iget v6, p0, Lcom/android/settings_ex/ApnPreference;->mSimId:I

    if-ne v6, v5, :cond_1

    .line 147
    sget-object v2, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 154
    .local v2, orig:Landroid/net/Uri;
    :goto_0
    int-to-long v6, v3

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 156
    .local v4, url:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.EDIT"

    invoke-direct {v1, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 157
    .local v1, it:Landroid/content/Intent;
    const-string v6, "simId"

    iget v7, p0, Lcom/android/settings_ex/ApnPreference;->mSimId:I

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-string v6, "readOnly"

    iget-boolean v7, p0, Lcom/android/settings_ex/ApnPreference;->mEditable:Z

    if-nez v7, :cond_3

    :goto_1
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 162
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #it:Landroid/content/Intent;
    .end local v2           #orig:Landroid/net/Uri;
    .end local v3           #pos:I
    .end local v4           #url:Landroid/net/Uri;
    :cond_0
    return-void

    .line 148
    .restart local v0       #context:Landroid/content/Context;
    .restart local v3       #pos:I
    :cond_1
    iget v6, p0, Lcom/android/settings_ex/ApnPreference;->mSimId:I

    if-nez v6, :cond_2

    .line 149
    sget-object v2, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    .restart local v2       #orig:Landroid/net/Uri;
    goto :goto_0

    .line 151
    .end local v2           #orig:Landroid/net/Uri;
    :cond_2
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .restart local v2       #orig:Landroid/net/Uri;
    goto :goto_0

    .line 158
    .restart local v1       #it:Landroid/content/Intent;
    .restart local v4       #url:Landroid/net/Uri;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public setApnEditable(Z)V
    .locals 0
    .parameter "isEditable"

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/android/settings_ex/ApnPreference;->mEditable:Z

    .line 178
    return-void
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnPreference;->sSelectedKey:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "selectable"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    .line 166
    return-void
.end method

.method public setSimId(I)V
    .locals 0
    .parameter "simid"

    .prologue
    .line 173
    iput p1, p0, Lcom/android/settings_ex/ApnPreference;->mSimId:I

    .line 174
    return-void
.end method

.method public setSourceType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 185
    iput p1, p0, Lcom/android/settings_ex/ApnPreference;->mSourceType:I

    .line 186
    return-void
.end method
