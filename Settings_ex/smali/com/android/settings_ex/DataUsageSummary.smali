.class public Lcom/android/settings_ex/DataUsageSummary;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DataUsageSummary$UidDetailTask;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/android/settings_ex/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmDataRoamingFragment;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;,
        Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;,
        Lcom/android/settings_ex/DataUsageSummary$AppItem;,
        Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;,
        Lcom/android/settings_ex/DataUsageSummary$CycleChangeItem;,
        Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    }
.end annotation


# static fields
.field private static final ACTION_POLICYMGR_CREATED:Ljava/lang/String; = "com.mediatek.server.action.ACTION_POLICY_CREATED"

.field private static final ATTACH_TIME_OUT_LENGTH:I = 0x7530

.field private static final DETACH_TIME_OUT_LENGTH:I = 0x2710

.field private static final EVENT_ATTACH_TIME_OUT:I = 0x7d1

.field private static final EVENT_DETACH_TIME_OUT:I = 0x7d0

.field private static final LIMIT_MAX_SIZE:I = 0xf9c00

.field private static final LOADER_CHART_DATA:I = 0x2

.field private static final LOADER_SUMMARY:I = 0x3

.field private static final LOGD:Z = true

.field private static final PIN1_REQUEST_CODE:I = 0x12e

.field private static final PREF_FILE:Ljava/lang/String; = "data_usage"

.field private static final PREF_SHOW_ETHERNET:Ljava/lang/String; = "show_ethernet"

.field private static final PREF_SHOW_WIFI:Ljava/lang/String; = "show_wifi"

.field private static final TAB_3G:Ljava/lang/String; = "3g"

.field private static final TAB_4G:Ljava/lang/String; = "4g"

.field private static final TAB_ETHERNET:Ljava/lang/String; = "ethernet"

.field private static final TAB_MOBILE:Ljava/lang/String; = "mobile"

.field private static final TAB_OVERVIEW:Ljava/lang/String; = "Overview"

.field private static final TAB_SIM_1:Ljava/lang/String; = "sim1"

.field private static final TAB_SIM_2:Ljava/lang/String; = "sim2"

.field private static final TAB_WIFI:Ljava/lang/String; = "wifi"

.field private static final TAG:Ljava/lang/String; = "DataUsage"

.field private static final TAG_APP_DETAILS:Ljava/lang/String; = "appDetails"

.field private static final TAG_BG_DATA_APP_DIALOG_MESSAGE:Ljava/lang/String; = "bgDataDialogMessage"

.field private static final TAG_BG_DATA_APP_DIALOG_TITLE:Ljava/lang/String; = "bgDataDialogTitle"

.field private static final TAG_BG_DATA_MENU_DIALOG_MESSAGE:Ljava/lang/String; = "bgDataMenuDialogMessage"

.field private static final TAG_BG_DATA_RESTRICT_DENY_MESSAGE:Ljava/lang/String; = "bgDataRestrictDenyMessage"

.field private static final TAG_BG_DATA_SUMMARY:Ljava/lang/String; = "bgDataSummary"

.field private static final TAG_BG_DATA_SWITCH:Ljava/lang/String; = "bgDataSwitch"

.field private static final TAG_CONFIRM_APP_RESTRICT:Ljava/lang/String; = "confirmAppRestrict"

.field private static final TAG_CONFIRM_AUTO_SYNC_CHANGE:Ljava/lang/String; = "confirmAutoSyncChange"

.field private static final TAG_CONFIRM_DATA_DISABLE:Ljava/lang/String; = "confirmDataDisable"

.field private static final TAG_CONFIRM_DATA_ROAMING:Ljava/lang/String; = "confirmDataRoaming"

.field private static final TAG_CONFIRM_LIMIT:Ljava/lang/String; = "confirmLimit"

.field private static final TAG_CONFIRM_RESTRICT:Ljava/lang/String; = "confirmRestrict"

.field private static final TAG_CYCLE_EDITOR:Ljava/lang/String; = "cycleEditor"

.field private static final TAG_DENIED_RESTRICT:Ljava/lang/String; = "deniedRestrict"

.field private static final TAG_LIMIT_EDITOR:Ljava/lang/String; = "limitEditor"

.field private static final TAG_WARNING_EDITOR:Ljava/lang/String; = "warningEditor"

.field private static final TEST_ANIM:Z = false

.field private static final TEST_RADIOS:Z = false

.field private static final TEST_RADIOS_PROP:Ljava/lang/String; = "test.radios"

.field private static final TEST_SUBSCRIBER_PROP:Ljava/lang/String; = "test.subscriberid"

.field private static final WARNING_MAX_SIZE:I = 0xe1000

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;

.field private static sIsSwitching:Z

.field private static sIsWifiOnly:Z

.field private static sSettingsMiscExt:Lcom/android/settings_ex/ext/ISettingsMiscExt;

.field private static sSimRoamingExt:Lcom/android/settings_ex/ext/ISimRoamingExt;


# instance fields
.field private mAdapter:Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

.field private mAirplaneObserver:Landroid/database/ContentObserver;

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDetail:Landroid/view/View;

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppPieChart:Lcom/android/settings_ex/widget/PieChartView;

.field private mAppRestrict:Landroid/widget/CheckBox;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSettingsListener:Landroid/view/View$OnClickListener;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mBinding:Z

.field private mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/settings_ex/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settings_ex/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

.field private mCycleAdapterOther:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

.field private mCycleAdapterSim1:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

.field private mCycleAdapterSim2:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleView:Landroid/view/View;

.field private mDataConnectionObserver:Landroid/database/ContentObserver;

.field private mDataEnabled:Landroid/widget/Switch;

.field private mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mDataEnabledView:Landroid/view/View;

.field private mDisableAtLimit:Landroid/widget/CheckBox;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitView:Landroid/view/View;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

.field private mHaveMobileSim:Z

.field mHaveSim1Tab:Z

.field mHaveSim2Tab:Z

.field private mHeader:Landroid/view/ViewGroup;

.field private mITelephony:Lcom/android/internal/telephony/ITelephony;

.field private mInsetSide:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentTab:Ljava/lang/String;

.field private mIsAirplaneModeOn:Z

.field private mIsLimitChangeToChecked:Z

.field private mIsUserEnabled:Z

.field private mIsUserEnabledNoneGemini:Z

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mLockScreenEnabled:Landroid/widget/Switch;

.field private mLockScreenPrefTitle:Landroid/widget/TextView;

.field private mMenuAutoSync:Landroid/view/MenuItem;

.field private mMenuDataRoaming:Landroid/view/MenuItem;

.field private mMenuDataRoamingSim1:Landroid/view/MenuItem;

.field private mMenuDataRoamingSim2:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMobileDataEnabled:Ljava/lang/Boolean;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mOverViewExpList:Landroid/widget/ExpandableListView;

.field private mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;

.field private mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSavedCurrentTab:Ljava/lang/String;

.field private mShowEthernet:Z

.field private mShowOnLockScreenView:Landroid/view/View;

.field private mShowWifi:Z

.field mSim1Name:Ljava/lang/String;

.field mSim2Name:Ljava/lang/String;

.field mSimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field mSimStatus1:I

.field mSimStatus2:I

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mTimerHandler:Landroid/os/Handler;

.field private mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

.field private mUsageSummary:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 338
    sput-boolean v0, Lcom/android/settings_ex/DataUsageSummary;->sIsSwitching:Z

    .line 355
    sput-boolean v0, Lcom/android/settings_ex/DataUsageSummary;->sIsWifiOnly:Z

    .line 2121
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settings_ex/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    .line 2122
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settings_ex/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settings_ex/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 181
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 229
    iput-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsUserEnabledNoneGemini:Z

    .line 250
    iput v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    .line 293
    iput-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    .line 294
    iput-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    .line 299
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .line 305
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 306
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 321
    iput-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mHaveSim1Tab:Z

    .line 322
    iput-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mHaveSim2Tab:Z

    .line 332
    iput-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsUserEnabled:Z

    .line 333
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    .line 349
    iput-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mHaveMobileSim:Z

    .line 365
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/DataUsageSummary$1;-><init>(Lcom/android/settings_ex/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    .line 380
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/DataUsageSummary$2;-><init>(Lcom/android/settings_ex/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataConnectionObserver:Landroid/database/ContentObserver;

    .line 398
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/DataUsageSummary$3;-><init>(Lcom/android/settings_ex/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAirplaneObserver:Landroid/database/ContentObserver;

    .line 410
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$4;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 1155
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$6;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 1180
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$7;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1702
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$8;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTimerHandler:Landroid/os/Handler;

    .line 1737
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$9;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$9;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1788
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$10;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$10;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    .line 1802
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$11;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    .line 1818
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$12;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    .line 1828
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$13;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$13;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1842
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$14;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$14;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1949
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$15;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$15;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1983
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$16;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$16;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 2047
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$17;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$17;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    .line 3000
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/DataUsageSummary;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsUserEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/NetworkPolicyEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/DataUsageSummary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 181
    sget-boolean v0, Lcom/android/settings_ex/DataUsageSummary;->sIsSwitching:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 181
    sput-boolean p0, Lcom/android/settings_ex/DataUsageSummary;->sIsSwitching:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/DataUsageSummary;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTimerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateTabs()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/DataUsageSummary;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DataUsageSummary;->onDataEnableChangeGemini(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/DataUsageSummary;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->getSimIndicatorState(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings_ex/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isNeedtoShowRoamingMsg()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400()Lcom/android/settings_ex/ext/ISimRoamingExt;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary;->sSimRoamingExt:Lcom/android/settings_ex/ext/ISimRoamingExt;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings_ex/DataUsageSummary;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/settings_ex/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateGeminiSimStatus()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/UidDetailProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/ChartData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/net/ChartData;)Lcom/android/settings_ex/net/ChartData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAdapter:Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/settings_ex/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/settings_ex/DataUsageSummary;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$4302(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/DataUsageSummary$AppItem;)Lcom/android/settings_ex/DataUsageSummary$AppItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/settings_ex/DataUsageSummary;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsLimitChangeToChecked:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/settings_ex/DataUsageSummary;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(IZ)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/settings_ex/DataUsageSummary;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DataUsageSummary;->setDataRoaming(IZ)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->setDataRoaming(Z)V

    return-void
.end method

.method static synthetic access$4900()Lcom/android/settings_ex/ext/ISettingsMiscExt;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary;->sSettingsMiscExt:Lcom/android/settings_ex/ext/ISettingsMiscExt;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsUserEnabledNoneGemini:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/DataUsageSummary;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsUserEnabledNoneGemini:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/settings_ex/DataUsageSummary;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/settings_ex/DataUsageSummary;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsAirplaneModeOn:Z

    return p1
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 1055
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 1059
    .local v0, transition:Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 1060
    return-object v0
.end method

.method private buildLimitedNetworksList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const v6, 0x7f0b08c8

    .line 3191
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3194
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3196
    .local v1, limited:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 3197
    .local v3, tele:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 3198
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 3202
    .local v2, subscriberId:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHaveSim1Tab:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings_ex/DataUsageSummary;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3204
    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3206
    :cond_0
    iget-boolean v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHaveSim2Tab:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/settings_ex/DataUsageSummary;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3208
    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3214
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3215
    const v4, 0x7f0b08c7

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3217
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3218
    const v4, 0x7f0b08c6

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3222
    .end local v2           #subscriberId:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3223
    const v4, 0x7f0b08c3

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3225
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3226
    const v4, 0x7f0b08c4

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3229
    :cond_5
    return-object v1
.end method

.method private buildLimitedNetworksString()Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3175
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->buildLimitedNetworksList()Ljava/util/List;

    move-result-object v0

    .line 3178
    .local v0, limited:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3179
    const v1, 0x7f0b08c9

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3182
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->join(Ljava/lang/Iterable;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter "tag"
    .parameter "titleRes"

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 7
    .parameter "tag"
    .parameter "title"

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 1173
    .local v3, tab:Landroid/widget/TabHost$TabSpec;
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary;->sSettingsMiscExt:Lcom/android/settings_ex/ext/ISettingsMiscExt;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    move-object v2, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/settings_ex/ext/ISettingsMiscExt;->DataUsageUpdateTabInfo(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/TabHost$TabSpec;Landroid/widget/TabWidget;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 1175
    .local v6, newTab:Landroid/widget/TabHost$TabSpec;
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v6, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 1176
    return-object v6
.end method

.method private checkMtkLockScreenApkExist()Z
    .locals 7

    .prologue
    .line 3291
    const/4 v3, 0x0

    .line 3292
    .local v3, isApkExist:Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3293
    .local v0, context:Landroid/content/Context;
    const-string v4, "com.mediatek.DataUsageLockScreenClient"

    .line 3295
    .local v4, packageName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3298
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x1

    .line 3304
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v3

    .line 3299
    :catch_0
    move-exception v1

    .line 3300
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "DataUsage"

    const-string v6, "ClassNotFoundException happens,MTK Keyguard did not install"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 2960
    const-string v3, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .line 2961
    .local v1, template:Landroid/net/NetworkTemplate;
    if-nez v1, :cond_0

    .line 2992
    :goto_0
    return-object v2

    .line 2963
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2971
    :pswitch_0
    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 2972
    .local v0, subscriber:Ljava/lang/String;
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "computeTabFromIntent, subscriber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    if-nez v0, :cond_1

    .line 2974
    const-string v2, "DataUsage"

    const-string v3, "the subscriber error , null!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    const-string v2, "sim1"

    goto :goto_0

    .line 2965
    .end local v0           #subscriber:Ljava/lang/String;
    :pswitch_1
    const-string v2, "3g"

    goto :goto_0

    .line 2967
    :pswitch_2
    const-string v2, "4g"

    goto :goto_0

    .line 2977
    .restart local v0       #subscriber:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2978
    const-string v2, "sim1"

    goto :goto_0

    .line 2979
    :cond_2
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2980
    const-string v2, "sim2"

    goto :goto_0

    .line 2982
    :cond_3
    const-string v2, "DataUsage"

    const-string v3, "the subscriber error , no mataching!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    const-string v2, "sim1"

    goto :goto_0

    .line 2990
    .end local v0           #subscriber:Ljava/lang/String;
    :pswitch_3
    const-string v2, "wifi"

    goto :goto_0

    .line 2963
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private ensureLayoutTransitions()V
    .locals 3

    .prologue
    .line 1042
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1052
    :goto_0
    return-void

    .line 1044
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1045
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1046
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1048
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 1049
    .local v0, chartTransition:Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 1050
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 1051
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2126
    const v8, 0x10010

    .line 2128
    .local v8, flags:I
    sget-object v9, Lcom/android/settings_ex/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v9

    .line 2129
    :try_start_0
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2130
    sget-object v1, Lcom/android/settings_ex/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 2132
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 2032
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 2033
    .local v1, tele:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 2034
    .local v0, actualSubscriberId:Ljava/lang/String;
    const-string v2, "test.subscriberid"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .prologue
    .line 1550
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    iget v0, v2, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    .line 1551
    .local v0, uid:I
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .line 1552
    .local v1, uidPolicy:I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getDataRoaming()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1499
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1500
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "data_roaming"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private getDataRoaming(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v1, 0x1

    .line 1507
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1508
    .local v0, siminfo:Landroid/provider/Telephony$SIMInfo;
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get data Romaing for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getEnableStateInProvider(Ljava/lang/String;)Z
    .locals 7
    .parameter "currentTab"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3312
    const/4 v1, 0x1

    .line 3315
    .local v1, previousState:I
    :try_start_0
    const-string v2, "sim1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3316
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "data_usage_on_lockscreen_sim1"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3331
    :cond_0
    :goto_0
    const-string v5, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentTab : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " lock screen state ON : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v1, v3, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    if-ne v1, v3, :cond_3

    :goto_2
    return v3

    .line 3318
    :cond_1
    :try_start_1
    const-string v2, "sim2"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3319
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "data_usage_on_lockscreen_sim2"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 3327
    :catch_0
    move-exception v0

    .line 3328
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    .line 3329
    const-string v2, "DataUsage"

    const-string v5, "Get data from provider failure"

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_2
    move v2, v4

    .line 3331
    goto :goto_1

    :cond_3
    move v3, v4

    .line 3332
    goto :goto_2
.end method

.method private getSimIndicatorState(I)I
    .locals 6
    .parameter "slotId"

    .prologue
    .line 3270
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimIndicator() slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3271
    const/4 v2, -0x1

    .line 3273
    .local v2, simIndicatorState:I
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_0

    .line 3274
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 3283
    :cond_0
    :goto_0
    return v2

    .line 3278
    :catch_0
    move-exception v0

    .line 3279
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "DataUsage"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3280
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 3281
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v3, "DataUsage"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSubscriberId(I)Ljava/lang/String;
    .locals 5
    .parameter "slotId"

    .prologue
    .line 2041
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    .line 2042
    .local v1, teleEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-virtual {v1, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 2043
    .local v0, imsiId:Ljava/lang/String;
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubscriberId() slotId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  imsiId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    return-object v0
.end method

.method private hasLimitedNetworks()Z
    .locals 1

    .prologue
    .line 3166
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->buildLimitedNetworksList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasReadyMobile4gRadio(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 3087
    const/4 v0, 0x0

    return v0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v8, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3064
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 3066
    .local v0, conn:Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    .line 3068
    .local v3, isSimStateReady:Z
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v4

    .line 3069
    .local v4, teleEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-virtual {v4, v6}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v7

    if-ne v7, v8, :cond_1

    move v1, v5

    .line 3070
    .local v1, isSim1StateReady:Z
    :goto_0
    invoke-virtual {v4, v5}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v7

    if-ne v7, v8, :cond_2

    move v2, v5

    .line 3071
    .local v2, isSim2StateReady:Z
    :goto_1
    const-string v7, "DataUsage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isSim1StateReady :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isSim2StateReady :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    if-nez v1, :cond_0

    if-eqz v2, :cond_3

    :cond_0
    move v3, v5

    .line 3079
    :goto_2
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v3, :cond_4

    :goto_3
    return v5

    .end local v1           #isSim1StateReady:Z
    .end local v2           #isSim2StateReady:Z
    :cond_1
    move v1, v6

    .line 3069
    goto :goto_0

    .restart local v1       #isSim1StateReady:Z
    :cond_2
    move v2, v6

    .line 3070
    goto :goto_1

    .restart local v2       #isSim2StateReady:Z
    :cond_3
    move v3, v6

    .line 3072
    goto :goto_2

    :cond_4
    move v5, v6

    .line 3079
    goto :goto_3
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 3110
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 3111
    .local v0, conn:Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "root"
    .parameter "label"

    .prologue
    .line 3156
    const v1, 0x7f040029

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3158
    .local v0, view:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3159
    return-object v0
.end method

.method private inflateLockScreenView(Landroid/view/LayoutInflater;)V
    .locals 3
    .parameter "inflater"

    .prologue
    const/4 v2, 0x1

    .line 3358
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 3359
    new-instance v0, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    .line 3360
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-static {p1, v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    .line 3362
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 3363
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 3364
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getEnableStateInProvider(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 3365
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    new-instance v1, Lcom/android/settings_ex/DataUsageSummary$18;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/DataUsageSummary$18;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3386
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mLockScreenPrefTitle:Landroid/widget/TextView;

    .line 3387
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mLockScreenPrefTitle:Landroid/widget/TextView;

    const v1, 0x7f0b0183

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3388
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3390
    :cond_0
    return-void
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "root"
    .parameter "widget"

    .prologue
    const/4 v4, -0x2

    .line 3147
    const v2, 0x7f04005e

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3148
    .local v0, view:Landroid/view/View;
    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 3150
    .local v1, widgetFrame:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3151
    return-object v0
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .parameter "view"
    .parameter "insetSide"

    .prologue
    .line 3237
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3238
    .local v1, selector:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3242
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 3243
    .local v2, stub:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3244
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 3246
    new-instance v3, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3247
    new-instance v3, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 3248
    return-void
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 1326
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isAppDetailMode()Z
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 1491
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1494
    :goto_0
    return v1

    .line 1492
    :catch_0
    move-exception v0

    .line 1493
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1444
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isMobileDataEnabled(I)Z
    .locals 4
    .parameter "slotId"

    .prologue
    .line 1451
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getMobileDataEnabledGemini(I)Z

    move-result v0

    .line 1452
    .local v0, result:Z
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMoblieDataEnabled for slotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    return v0
.end method

.method private isMobilePolicySplit()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2013
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2014
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2015
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 2016
    .local v1, tele:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v2

    .line 2018
    .end local v1           #tele:Landroid/telephony/TelephonyManager;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNeedtoShowRoamingMsg()Z
    .locals 6

    .prologue
    .line 1780
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1781
    .local v2, telMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 1782
    .local v0, isInRoaming:Z
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->getDataRoaming()Z

    move-result v1

    .line 1783
    .local v1, isRoamingEnabled:Z
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInRoaming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isRoamingEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 6
    .parameter "policy"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1483
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DataUsageSummary;->isSimStatusNotReady(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 1484
    .local v0, isSimReady:Z
    :goto_0
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNetworkPolicyModifiable policy : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isSimReady "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    return v1

    .end local v0           #isSimReady:Z
    :cond_0
    move v0, v2

    .line 1483
    goto :goto_0

    .restart local v0       #isSimReady:Z
    :cond_1
    move v1, v2

    .line 1485
    goto :goto_1
.end method

.method private isSimStatusNotReady(Ljava/lang/String;)Z
    .locals 4
    .parameter "currentTab"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3340
    const/4 v0, 0x1

    .line 3342
    .local v0, isStatusNotReady:Z
    const-string v3, "sim1"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3343
    iget-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsAirplaneModeOn:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mSimStatus1:I

    if-ne v3, v2, :cond_2

    :cond_0
    move v0, v2

    .line 3350
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 3343
    goto :goto_0

    .line 3344
    :cond_3
    const-string v3, "sim2"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3345
    iget-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsAirplaneModeOn:Z

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mSimStatus2:I

    if-ne v3, v2, :cond_5

    :cond_4
    move v0, v2

    :goto_1
    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private onDataEnableChangeGemini(ZI)V
    .locals 3
    .parameter "dataEnabled"
    .parameter "slotId"

    .prologue
    const/4 v2, 0x1

    .line 1721
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DataUsageSummary;->isMobileDataEnabled(I)Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1736
    :goto_0
    return-void

    .line 1724
    :cond_0
    if-eqz p1, :cond_2

    .line 1725
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DataUsageSummary;->getSimIndicatorState(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1726
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    const/16 v1, 0x12e

    invoke-virtual {v0, p2, v1}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    .line 1727
    const-string v0, "DataUsage"

    const-string v1, "Data enable check change request pin"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 1730
    :cond_1
    invoke-direct {p0, p2, v2}, Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(IZ)V

    .line 1731
    iput-boolean v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsUserEnabled:Z

    goto :goto_0

    .line 1734
    :cond_2
    invoke-static {p0, p2}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/settings_ex/DataUsageSummary;I)V

    goto :goto_0
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3
    .parameter "restrictBackground"

    .prologue
    .line 1556
    const-string v1, "DataUsage"

    const-string v2, "setAppRestrictBackground()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    iget v0, v1, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    .line 1558
    .local v0, uid:I
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 1560
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1561
    return-void

    .line 1558
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setDataRoaming(IZ)V
    .locals 6
    .parameter "slotId"
    .parameter "enabled"

    .prologue
    .line 1525
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set data Romaing for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    .line 1528
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p2, p1}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabledGemini(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1535
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 1537
    .local v1, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz p2, :cond_1

    .line 1538
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    iget-wide v4, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Telephony$SIMInfo;->setDataRoaming(Landroid/content/Context;IJ)I

    .line 1542
    :goto_1
    return-void

    .line 1529
    .end local v1           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :catch_0
    move-exception v0

    .line 1530
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DataUsage"

    const-string v3, "data roaming setting remote exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1533
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "DataUsage"

    const-string v3, "iTelephony is null , error !"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1540
    .restart local v1       #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    iget-wide v4, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Telephony$SIMInfo;->setDataRoaming(Landroid/content/Context;IJ)I

    goto :goto_1
.end method

.method private setDataRoaming(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1515
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1516
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "data_roaming"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1517
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1518
    return-void

    .line 1516
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMobileDataEnabled(IZ)V
    .locals 5
    .parameter "slotId"
    .parameter "enabled"

    .prologue
    const/4 v4, 0x0

    .line 1469
    const-string v0, "DataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileDataEnabled for slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/DataUsageSummary;->sIsSwitching:Z

    .line 1471
    if-eqz p2, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 1473
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTimerHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1479
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    .line 1480
    return-void

    .line 1475
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 1476
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTimerHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1477
    iput-boolean v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsUserEnabled:Z

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1457
    const-string v0, "DataUsage"

    const-string v1, "setMobileDataEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsUserEnabledNoneGemini:Z

    .line 1460
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1461
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 1462
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    .line 1463
    return-void
.end method

.method private setMobilePolicySplit(Z)V
    .locals 4
    .parameter "split"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2024
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2025
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2026
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 2027
    .local v1, tele:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setMobilePolicySplit(Ljava/lang/String;Z)V

    .line 2029
    .end local v1           #tele:Landroid/telephony/TelephonyManager;
    :cond_0
    return-void
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3
    .parameter "limitBytes"

    .prologue
    .line 1428
    const-string v0, "DataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPolicyLimitBytes() , limitBytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 1430
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    .line 1431
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3
    .parameter "warningBytes"

    .prologue
    .line 1422
    const-string v0, "DataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPolicyWarningBytes() , warningBytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 1424
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    .line 1425
    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "parent"
    .parameter "string"

    .prologue
    .line 3264
    const v1, 0x1020010

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3265
    .local v0, summary:Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3266
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3267
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 2
    .parameter "parent"
    .parameter "resId"

    .prologue
    .line 3255
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3256
    .local v0, title:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 3257
    return-void
.end method

.method private updateAppDetail()V
    .locals 21

    .prologue
    .line 1339
    const-string v18, "DataUsage"

    const-string v19, "updateAppDetail()"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 1341
    .local v6, context:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 1342
    .local v15, pm:Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 1344
    .local v9, inflater:Landroid/view/LayoutInflater;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    move/from16 v17, v0

    .line 1361
    .local v17, uid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settings_ex/net/UidDetail;

    move-result-object v7

    .line 1362
    .local v7, detail:Lcom/android/settings_ex/net/UidDetail;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    iget-object v0, v7, Lcom/android/settings_ex/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1365
    iget-object v0, v7, Lcom/android/settings_ex/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1366
    iget-object v5, v7, Lcom/android/settings_ex/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    .local v5, arr$:[Ljava/lang/CharSequence;
    array-length v11, v5

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v11, :cond_2

    aget-object v10, v5, v8

    .line 1367
    .local v10, label:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v9, v0, v10}, Lcom/android/settings_ex/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1366
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1348
    .end local v5           #arr$:[Ljava/lang/CharSequence;
    .end local v7           #detail:Lcom/android/settings_ex/net/UidDetail;
    .end local v8           #i$:I
    .end local v10           #label:Ljava/lang/CharSequence;
    .end local v11           #len$:I
    .end local v17           #uid:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1419
    :goto_1
    return-void

    .line 1370
    .restart local v7       #detail:Lcom/android/settings_ex/net/UidDetail;
    .restart local v17       #uid:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    iget-object v0, v7, Lcom/android/settings_ex/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v9, v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1374
    :cond_2
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 1375
    .local v14, packageNames:[Ljava/lang/String;
    if-eqz v14, :cond_5

    array-length v0, v14

    move/from16 v18, v0

    if-lez v18, :cond_5

    .line 1376
    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "android.intent.category.DEFAULT"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1380
    const/4 v12, 0x0

    .line 1381
    .local v12, matchFound:Z
    move-object v5, v14

    .local v5, arr$:[Ljava/lang/String;
    array-length v11, v5

    .restart local v11       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_2
    if-ge v8, v11, :cond_3

    aget-object v13, v5, v8

    .line 1382
    .local v13, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 1384
    const/4 v12, 0x1

    .line 1389
    .end local v13           #packageName:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 1397
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .end local v12           #matchFound:Z
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    .line 1399
    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v18

    if-nez v18, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-static {v6}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1403
    sget-object v18, Lcom/android/settings_ex/DataUsageSummary;->sSettingsMiscExt:Lcom/android/settings_ex/ext/ISettingsMiscExt;

    const v19, 0x7f0b08ce

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "bgDataSwitch"

    invoke-interface/range {v18 .. v20}, Lcom/android/settings_ex/ext/ISettingsMiscExt;->getDataUsageBackgroundStrByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1405
    .local v4, appBgDataSwitch:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x1020016

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1406
    .local v16, title:Landroid/widget/TextView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1407
    sget-object v18, Lcom/android/settings_ex/DataUsageSummary;->sSettingsMiscExt:Lcom/android/settings_ex/ext/ISettingsMiscExt;

    const v19, 0x7f0b08cf

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "bgDataSummary"

    invoke-interface/range {v18 .. v20}, Lcom/android/settings_ex/ext/ISettingsMiscExt;->getDataUsageBackgroundStrByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1409
    .local v3, appBgDataSummary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1418
    .end local v3           #appBgDataSummary:Ljava/lang/String;
    .end local v4           #appBgDataSwitch:Ljava/lang/String;
    .end local v16           #title:Landroid/widget/TextView;
    :goto_4
    const-string v18, "DataUsage"

    const-string v19, "updateAppDetail done"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1381
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v11       #len$:I
    .restart local v12       #matchFound:Z
    .restart local v13       #packageName:Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 1393
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .end local v12           #matchFound:Z
    .end local v13           #packageName:Ljava/lang/String;
    :cond_5
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1416
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method private updateBody()V
    .locals 13

    .prologue
    const v12, 0x7f0b08ca

    const v11, 0x7f0b08bf

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v8, 0x8

    .line 1194
    const-string v7, "DataUsage"

    const-string v9, "updateBody()"

    invoke-static {v7, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    iput-boolean v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    .line 1196
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1321
    :goto_0
    return-void

    .line 1198
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1199
    .local v0, context:Landroid/content/Context;
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 1200
    .local v1, currentTab:Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    if-nez v7, :cond_1

    move v2, v5

    .line 1202
    .local v2, isOwner:Z
    :goto_1
    const-string v7, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateBody currentTab : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mSavedCurrentTab : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    if-nez v1, :cond_2

    .line 1204
    const-string v5, "DataUsage"

    const-string v6, "no tab selected; hiding body"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v2           #isOwner:Z
    :cond_1
    move v2, v6

    .line 1200
    goto :goto_1

    .line 1207
    .restart local v2       #isOwner:Z
    :cond_2
    const-string v7, "Overview"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1208
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v7

    if-le v7, v5, :cond_4

    .line 1209
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1210
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mOverViewExpList:Landroid/widget/ExpandableListView;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1211
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-virtual {v5}, Lcom/mediatek/datausage/OverViewTabAdapter;->updateAdapter()V

    .line 1212
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-virtual {v5}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 1215
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 1219
    :cond_5
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mOverViewExpList:Landroid/widget/ExpandableListView;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1220
    invoke-direct {p0, v1}, Lcom/android/settings_ex/DataUsageSummary;->updateLockScreenViewVisibility(Ljava/lang/String;)V

    .line 1222
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1225
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    move v3, v5

    .line 1226
    .local v3, tabChanged:Z
    :goto_2
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 1228
    const-string v7, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateBody : currentTab = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sIsSwitching = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/settings_ex/DataUsageSummary;->sIsSwitching:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    if-eqz v2, :cond_8

    move v7, v6

    :goto_3
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1234
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 1238
    .local v4, tele:Landroid/telephony/TelephonyManager;
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapterOther:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    iput-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    .line 1240
    const-string v7, "sim1"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1241
    iget-boolean v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsAirplaneModeOn:Z

    if-nez v7, :cond_6

    iget v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mSimStatus1:I

    if-ne v7, v5, :cond_9

    .line 1243
    :cond_6
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1244
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1245
    const-string v7, "DataUsage"

    const-string v8, "disable sim 1 enable because radio off"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :goto_4
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    sget-boolean v8, Lcom/android/settings_ex/DataUsageSummary;->sIsSwitching:Z

    if-nez v8, :cond_a

    :goto_5
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1253
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapterSim1:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    .line 1254
    invoke-static {v6}, Lcom/android/settings_ex/DataUsageSummary;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 1310
    :goto_6
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1314
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    invoke-static {v8, v9}, Lcom/android/settings_ex/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings_ex/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v5, v7, v8, v9}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1318
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1320
    iput-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    goto/16 :goto_0

    .end local v3           #tabChanged:Z
    .end local v4           #tele:Landroid/telephony/TelephonyManager;
    :cond_7
    move v3, v6

    .line 1225
    goto/16 :goto_2

    .restart local v3       #tabChanged:Z
    :cond_8
    move v7, v8

    .line 1231
    goto :goto_3

    .line 1247
    .restart local v4       #tele:Landroid/telephony/TelephonyManager;
    :cond_9
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-static {v7, v12}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1248
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-static {v7, v11}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    goto :goto_4

    :cond_a
    move v5, v6

    .line 1251
    goto :goto_5

    .line 1256
    :cond_b
    const-string v7, "sim2"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1257
    iget-boolean v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsAirplaneModeOn:Z

    if-nez v7, :cond_c

    iget v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mSimStatus2:I

    if-ne v7, v5, :cond_d

    .line 1259
    :cond_c
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1260
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1261
    const-string v7, "DataUsage"

    const-string v8, "disable sim 2 enable because radio off"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :goto_7
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    sget-boolean v7, Lcom/android/settings_ex/DataUsageSummary;->sIsSwitching:Z

    if-nez v7, :cond_e

    move v7, v5

    :goto_8
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1267
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapterSim2:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    iput-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    .line 1268
    invoke-static {v5}, Lcom/android/settings_ex/DataUsageSummary;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_6

    .line 1263
    :cond_d
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-static {v7, v12}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1264
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-static {v7, v11}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    goto :goto_7

    :cond_e
    move v7, v6

    .line 1266
    goto :goto_8

    .line 1270
    :cond_f
    const-string v5, "mobile"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1272
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-static {v5, v11}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1273
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/DataUsageSummary;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1274
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1275
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1280
    :goto_9
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_6

    .line 1277
    :cond_10
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-static {v5, v12}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    goto :goto_9

    .line 1282
    :cond_11
    const-string v5, "3g"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1283
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v7, 0x7f0b08cb

    invoke-static {v5, v7}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1284
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v7, 0x7f0b08c1

    invoke-static {v5, v7}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1286
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_6

    .line 1288
    :cond_12
    const-string v5, "4g"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1289
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v7, 0x7f0b08cc

    invoke-static {v5, v7}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1290
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v7, 0x7f0b08c0

    invoke-static {v5, v7}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1292
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_6

    .line 1294
    :cond_13
    const-string v5, "wifi"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1296
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1297
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1298
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_6

    .line 1300
    :cond_14
    const-string v5, "ethernet"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1302
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1303
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1304
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_6

    .line 1308
    :cond_15
    const-string v5, "DataUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown TAB  currentTab : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 24
    .parameter "policy"

    .prologue
    .line 1633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    .line 1634
    .local v22, previousItem:Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->clear()V

    .line 1636
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1638
    .local v4, context:Landroid/content/Context;
    const-wide v18, 0x7fffffffffffffffL

    .line 1639
    .local v18, historyStart:J
    const-wide/high16 v16, -0x8000

    .line 1640
    .local v16, historyEnd:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    if-eqz v3, :cond_0

    .line 1641
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v3, v3, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v18

    .line 1642
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v3, v3, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v16

    .line 1645
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1646
    .local v20, now:J
    const-wide v9, 0x7fffffffffffffffL

    cmp-long v3, v18, v9

    if-nez v3, :cond_1

    move-wide/from16 v18, v20

    .line 1647
    :cond_1
    const-wide/high16 v9, -0x8000

    cmp-long v3, v16, v9

    if-nez v3, :cond_2

    const-wide/16 v9, 0x1

    add-long v16, v20, v9

    .line 1649
    :cond_2
    const/4 v15, 0x0

    .line 1650
    .local v15, hasCycles:Z
    if-eqz p1, :cond_4

    .line 1652
    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v7

    .line 1655
    .local v7, cycleEnd:J
    :goto_0
    cmp-long v3, v7, v18

    if-lez v3, :cond_3

    .line 1656
    move-object/from16 v0, p1

    invoke-static {v7, v8, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v5

    .line 1657
    .local v5, cycleStart:J
    const-string v3, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generating cs="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to ce="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " waiting for hs="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    new-instance v3, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    invoke-direct/range {v3 .. v8}, Lcom/android/settings_ex/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v9, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1660
    move-wide v7, v5

    .line 1661
    const/4 v15, 0x1

    .line 1662
    goto :goto_0

    .line 1665
    .end local v5           #cycleStart:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1668
    .end local v7           #cycleEnd:J
    :cond_4
    if-nez v15, :cond_6

    .line 1670
    move-wide/from16 v7, v16

    .line 1671
    .restart local v7       #cycleEnd:J
    :goto_1
    cmp-long v3, v7, v18

    if-lez v3, :cond_5

    .line 1672
    const-wide v9, 0x90321000L

    sub-long v5, v7, v9

    .line 1673
    .restart local v5       #cycleStart:J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    new-instance v3, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    invoke-direct/range {v3 .. v8}, Lcom/android/settings_ex/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v9, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1674
    move-wide v7, v5

    .line 1675
    goto :goto_1

    .line 1677
    .end local v5           #cycleStart:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1681
    .end local v7           #cycleEnd:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_8

    .line 1682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/settings_ex/DataUsageSummary$CycleItem;)I

    move-result v12

    .line 1683
    .local v12, position:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v12}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 1687
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v3, v12}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    .line 1688
    .local v23, selectedItem:Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1689
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-interface/range {v9 .. v14}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1697
    .end local v12           #position:I
    .end local v23           #selectedItem:Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    :goto_2
    return-void

    .line 1692
    .restart local v12       #position:I
    .restart local v23       #selectedItem:Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    goto :goto_2

    .line 1695
    .end local v12           #position:I
    .end local v23           #selectedItem:Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    goto :goto_2
.end method

.method private updateDetailData()V
    .locals 29

    .prologue
    .line 1888
    const-string v3, "DataUsage"

    const-string v11, "updateDetailData()"

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v4

    .line 1891
    .local v4, start:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v6

    .line 1892
    .local v6, end:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1894
    .local v8, now:J
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    .line 1896
    .local v19, context:Landroid/content/Context;
    const/4 v10, 0x0

    .line 1897
    .local v10, entry:Landroid/net/NetworkStatsHistory$Entry;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v3, v3, Lcom/android/settings_ex/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v3, :cond_1

    .line 1899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v3, v3, Lcom/android/settings_ex/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1900
    iget-wide v11, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v20, v11, v13

    .line 1901
    .local v20, defaultBytes:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v3, v3, Lcom/android/settings_ex/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1902
    iget-wide v11, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v22, v11, v13

    .line 1904
    .local v22, foregroundBytes:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppPieChart:Lcom/android/settings_ex/widget/PieChartView;

    const/16 v11, 0xaf

    invoke-virtual {v3, v11}, Lcom/android/settings_ex/widget/PieChartView;->setOriginAngle(I)V

    .line 1906
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppPieChart:Lcom/android/settings_ex/widget/PieChartView;

    invoke-virtual {v3}, Lcom/android/settings_ex/widget/PieChartView;->removeAllSlices()V

    .line 1907
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppPieChart:Lcom/android/settings_ex/widget/PieChartView;

    const-string v11, "#d88d3a"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1, v11}, Lcom/android/settings_ex/widget/PieChartView;->addSlice(JI)V

    .line 1908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppPieChart:Lcom/android/settings_ex/widget/PieChartView;

    const-string v11, "#666666"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1, v11}, Lcom/android/settings_ex/widget/PieChartView;->addSlice(JI)V

    .line 1910
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppPieChart:Lcom/android/settings_ex/widget/PieChartView;

    invoke-virtual {v3}, Lcom/android/settings_ex/widget/PieChartView;->generatePath()V

    .line 1912
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    invoke-static/range {v19 .. v21}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1913
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1916
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v11, v3, Lcom/android/settings_ex/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1918
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1930
    .end local v20           #defaultBytes:J
    .end local v22           #foregroundBytes:J
    :goto_0
    if-eqz v10, :cond_3

    iget-wide v11, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v26, v11, v13

    .line 1931
    .local v26, totalBytes:J
    :goto_1
    move-object/from16 v0, v19

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    .line 1932
    .local v28, totalPhrase:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-static {v0, v4, v5, v6, v7}, Lcom/android/settings_ex/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v24

    .line 1935
    .local v24, rangePhrase:Ljava/lang/String;
    const-string v3, "mobile"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "3g"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "4g"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1937
    :cond_0
    const v25, 0x7f0b08e8

    .line 1942
    .local v25, summaryRes:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v28, v11, v12

    const/4 v12, 0x1

    aput-object v24, v11, v12

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1946
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->ensureLayoutTransitions()V

    .line 1947
    return-void

    .line 1921
    .end local v24           #rangePhrase:Ljava/lang/String;
    .end local v25           #summaryRes:I
    .end local v26           #totalBytes:J
    .end local v28           #totalPhrase:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    if-eqz v3, :cond_2

    .line 1922
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v11, v3, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1926
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v12, v4, v5, v6, v7}, Lcom/android/settings_ex/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v3, v11, v12, v13}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_0

    .line 1930
    :cond_3
    const-wide/16 v26, 0x0

    goto :goto_1

    .line 1939
    .restart local v24       #rangePhrase:Ljava/lang/String;
    .restart local v26       #totalBytes:J
    .restart local v28       #totalPhrase:Ljava/lang/String;
    :cond_4
    const v25, 0x7f0b08e7

    .restart local v25       #summaryRes:I
    goto :goto_2
.end method

.method private updateGeminiSimStatus()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 512
    const-string v2, "DataUsage"

    const-string v3, "updateGeminiSimStatus()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mSimList:Ljava/util/List;

    .line 514
    iput-boolean v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHaveSim1Tab:Z

    .line 515
    iput-boolean v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHaveSim2Tab:Z

    .line 516
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mSimList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    .line 517
    .local v1, info:Landroid/provider/Telephony$SIMInfo;
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim info slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " display name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sim id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget v2, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v2, :cond_1

    .line 519
    iput-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mHaveSim1Tab:Z

    .line 520
    iget v2, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DataUsageSummary;->getSimIndicatorState(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mSimStatus1:I

    .line 521
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimStatus1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mSimStatus1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 522
    :cond_1
    iget v2, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v2, v6, :cond_0

    .line 523
    iput-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mHaveSim2Tab:Z

    .line 524
    iget v2, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DataUsageSummary;->getSimIndicatorState(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mSimStatus2:I

    .line 525
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimStatus2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mSimStatus2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 528
    .end local v1           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_2
    return-void
.end method

.method private updateLockScreenViewState(Landroid/net/NetworkTemplate;Ljava/lang/String;)V
    .locals 9
    .parameter "template"
    .parameter "currentTab"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3397
    const-string v5, "DataUsage"

    const-string v6, "updateLockScreenViewState()"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    if-eqz v5, :cond_0

    invoke-direct {p0, p2}, Lcom/android/settings_ex/DataUsageSummary;->isSimStatusNotReady(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3444
    :cond_0
    :goto_0
    return-void

    .line 3405
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-virtual {v5, p1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 3406
    .local v2, policy:Landroid/net/NetworkPolicy;
    if-eqz v2, :cond_2

    iget-wide v0, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 3407
    .local v0, limitBytes:J
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v5

    if-nez v5, :cond_6

    .line 3408
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3409
    cmp-long v3, v0, v3

    if-nez v3, :cond_3

    .line 3411
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-virtual {v3, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 3413
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3414
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mLockScreenPrefTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .end local v0           #limitBytes:J
    :cond_2
    move-wide v0, v3

    .line 3406
    goto :goto_1

    .line 3417
    .restart local v0       #limitBytes:J
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3418
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mLockScreenPrefTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3420
    iget-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsLimitChangeToChecked:Z

    if-eqz v3, :cond_4

    .line 3422
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 3423
    iput-boolean v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsLimitChangeToChecked:Z

    goto :goto_0

    .line 3427
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-direct {p0, p2}, Lcom/android/settings_ex/DataUsageSummary;->getEnableStateInProvider(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 3432
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-virtual {v3, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 3434
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3435
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mLockScreenPrefTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 3439
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3440
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mLockScreenPrefTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3442
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-direct {p0, p2}, Lcom/android/settings_ex/DataUsageSummary;->getEnableStateInProvider(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateLockScreenViewVisibility(Ljava/lang/String;)V
    .locals 4
    .parameter "currentTab"

    .prologue
    const/16 v0, 0x8

    .line 3451
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLockScreenViewVisibility() currentTab : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 3469
    :goto_0
    return-void

    .line 3455
    :cond_0
    const-string v1, "wifi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3457
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3459
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->isSimStatusNotReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3461
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3465
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->checkMtkLockScreenApkExist()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :cond_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePolicy(Z)V
    .locals 8
    .parameter "refreshCycle"

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1568
    const-string v1, "DataUsage"

    const-string v4, "updatePolicy()"

    invoke-static {v1, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1570
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1576
    :goto_0
    const-string v1, "mobile"

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1577
    iput-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    .line 1578
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1579
    iput-boolean v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    .line 1590
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 1591
    .local v0, policy:Landroid/net/NetworkPolicy;
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    if-nez v1, :cond_9

    .line 1592
    const-string v1, "DataUsage"

    const-string v2, "mDisableAtLimitView should not be null here !!!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :cond_1
    :goto_2
    return-void

    .line 1572
    .end local v0           #policy:Landroid/net/NetworkPolicy;
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1580
    :cond_3
    const-string v1, "sim1"

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1581
    iput-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    .line 1582
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DataUsageSummary;->isMobileDataEnabled(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsUserEnabled:Z

    if-eqz v1, :cond_5

    :cond_4
    move v1, v3

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1583
    iput-boolean v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    goto :goto_1

    :cond_5
    move v1, v2

    .line 1582
    goto :goto_3

    .line 1584
    :cond_6
    const-string v1, "sim2"

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1585
    iput-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    .line 1586
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DataUsageSummary;->isMobileDataEnabled(I)Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsUserEnabled:Z

    if-eqz v1, :cond_8

    :cond_7
    move v1, v3

    :goto_4
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1587
    iput-boolean v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    goto :goto_1

    :cond_8
    move v1, v2

    .line 1586
    goto :goto_4

    .line 1595
    .restart local v0       #policy:Landroid/net/NetworkPolicy;
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1596
    const-string v1, "DataUsage"

    const-string v4, "network policy  modifiable, checkbox on"

    invoke-static {v1, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1598
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setPolicyActive(Landroid/net/NetworkPolicy;)V

    .line 1599
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    if-eqz v0, :cond_d

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_d

    :goto_5
    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1600
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1601
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1613
    :cond_a
    :goto_6
    const-string v1, "sim1"

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "sim2"

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "mobile"

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1615
    :cond_b
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->updateLockScreenViewState(Landroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 1620
    :cond_c
    if-eqz p1, :cond_1

    .line 1622
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    goto/16 :goto_2

    :cond_d
    move v3, v2

    .line 1599
    goto :goto_5

    .line 1606
    :cond_e
    const-string v1, "DataUsage"

    const-string v2, "network policy not modifiable, no warning limit/sweeps."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1608
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_6
.end method

.method private updateTabs()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1069
    const-string v7, "DataUsage"

    const-string v8, "updateTabs()"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1071
    .local v0, context:Landroid/content/Context;
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 1073
    const-string v7, "DataUsage"

    const-string v8, "clear All Tabs..."

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "Overview"

    const v9, 0x7f0b0189

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1078
    const-string v7, "DataUsage"

    const-string v8, "Add OVERVIEW TAB"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v1

    .line 1082
    .local v1, mobileSplit:Z
    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1083
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "3g"

    const v9, 0x7f0b08c7

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1084
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "4g"

    const v9, 0x7f0b08c6

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1116
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    if-eqz v7, :cond_1

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1117
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "wifi"

    const v9, 0x7f0b08c3

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1119
    :cond_1
    iget-boolean v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1120
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "ethernet"

    const v9, 0x7f0b08c4

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1123
    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v7

    if-nez v7, :cond_6

    move v3, v5

    .line 1124
    .local v3, noTabs:Z
    :goto_1
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v7

    if-le v7, v5, :cond_7

    move v2, v5

    .line 1125
    .local v2, multipleTabs:Z
    :goto_2
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v2, :cond_8

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1126
    const-string v5, "DataUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIntentTab "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSavedCurrentTab "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 1128
    const-string v5, "DataUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent tab "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1131
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateBody()V

    .line 1136
    :goto_4
    iput-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 1150
    :cond_3
    :goto_5
    return-void

    .line 1087
    .end local v2           #multipleTabs:Z
    .end local v3           #noTabs:Z
    :cond_4
    iget-boolean v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mHaveSim1Tab:Z

    if-eqz v7, :cond_5

    .line 1088
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v4

    .line 1089
    .local v4, siminfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v4, :cond_5

    .line 1090
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "sim1"

    iget-object v9, v4, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1091
    iget-object v7, v4, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mSim1Name:Ljava/lang/String;

    .line 1094
    .end local v4           #siminfo:Landroid/provider/Telephony$SIMInfo;
    :cond_5
    iget-boolean v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mHaveSim2Tab:Z

    if-eqz v7, :cond_0

    .line 1095
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v4

    .line 1096
    .restart local v4       #siminfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v4, :cond_0

    .line 1097
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "sim2"

    iget-object v9, v4, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1098
    iget-object v7, v4, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mSim2Name:Ljava/lang/String;

    goto/16 :goto_0

    .end local v4           #siminfo:Landroid/provider/Telephony$SIMInfo;
    :cond_6
    move v3, v6

    .line 1123
    goto/16 :goto_1

    .restart local v3       #noTabs:Z
    :cond_7
    move v2, v6

    .line 1124
    goto/16 :goto_2

    .line 1125
    .restart local v2       #multipleTabs:Z
    :cond_8
    const/16 v6, 0x8

    goto/16 :goto_3

    .line 1133
    :cond_9
    const-string v5, "DataUsage"

    const-string v6, "set Intent tab "

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_4

    .line 1137
    :cond_a
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    if-eqz v5, :cond_c

    .line 1138
    const-string v5, "DataUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saved curernt tabs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 1140
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 1142
    :cond_b
    iput-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    .line 1143
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateBody()V

    goto/16 :goto_5

    .line 1144
    :cond_c
    if-eqz v3, :cond_3

    .line 1146
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateBody()V

    goto/16 :goto_5
.end method


# virtual methods
.method public hasEthernet(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    .line 3122
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    .line 3123
    .local v6, conn:Landroid/net/ConnectivityManager;
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    .line 3126
    .local v10, hasEthernet:Z
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 3128
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 3139
    .local v8, ethernetBytes:J
    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 3131
    .end local v8           #ethernetBytes:J
    :catch_0
    move-exception v7

    .line 3132
    .local v7, e:Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 3135
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v8, 0x0

    .restart local v8       #ethernetBytes:J
    goto :goto_0

    .line 3139
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 532
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 535
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 536
    .local v1, orientation:I
    const/4 v2, 0x7

    .line 537
    .local v2, winOrientation:I
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current config orienation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 539
    const/4 v2, 0x6

    .line 541
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 544
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 546
    .local v0, context:Landroid/content/Context;
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 548
    const-string v3, "netstats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 550
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 551
    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    .line 553
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "data_usage"

    invoke-virtual {v3, v4, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 558
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 559
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 561
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateGeminiSimStatus()V

    .line 562
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentFilter:Landroid/content/IntentFilter;

    .line 563
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 564
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 565
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.mediatek.server.action.ACTION_POLICY_CREATED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 566
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 579
    new-instance v3, Lcom/mediatek/CellConnService/CellConnMgr;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 580
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 582
    new-instance v3, Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v3, v4}, Lcom/android/settings_ex/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    .line 583
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-virtual {v3}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->read()V

    .line 585
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "show_wifi"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    .line 586
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "show_ethernet"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    .line 589
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 590
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    .line 591
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    .line 595
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 596
    sput-boolean v7, Lcom/android/settings_ex/DataUsageSummary;->sIsWifiOnly:Z

    .line 599
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->getSimRoamingExtPlugin(Landroid/content/Context;)Lcom/android/settings_ex/ext/ISimRoamingExt;

    move-result-object v3

    sput-object v3, Lcom/android/settings_ex/DataUsageSummary;->sSimRoamingExt:Lcom/android/settings_ex/ext/ISimRoamingExt;

    .line 600
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/android/settings_ex/ext/ISettingsMiscExt;

    move-result-object v3

    sput-object v3, Lcom/android/settings_ex/DataUsageSummary;->sSettingsMiscExt:Lcom/android/settings_ex/ext/ISettingsMiscExt;

    .line 602
    invoke-virtual {p0, v7}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 603
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 828
    const/high16 v0, 0x7f10

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 829
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 608
    const-string v4, "DataUsage"

    const-string v7, "onCreateView"

    invoke-static {v4, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 610
    .local v0, context:Landroid/content/Context;
    const v4, 0x7f040031

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 612
    .local v3, view:Landroid/view/View;
    new-instance v4, Lcom/android/settings_ex/net/UidDetailProvider;

    invoke-direct {v4, v0}, Lcom/android/settings_ex/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    .line 615
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v4}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    .line 618
    new-instance v4, Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-direct {v4, v7, v8}, Lcom/mediatek/datausage/OverViewTabAdapter;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;)V

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    const v4, 0x1020012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 626
    const v4, 0x7f080062

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 627
    const v4, 0x1020013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabWidget;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 628
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    .line 632
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/view/View;->getScrollBarStyle()I

    move-result v4

    const/high16 v7, 0x200

    if-ne v4, v7, :cond_1

    move v2, v5

    .line 634
    .local v2, shouldInset:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 635
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1050029

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    .line 642
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v3, v4, v5}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 644
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 645
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 647
    const v4, 0x7f04002f

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    .line 648
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 652
    const v4, 0x7f080063

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ExpandableListView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mOverViewExpList:Landroid/widget/ExpandableListView;

    .line 654
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mOverViewExpList:Landroid/widget/ExpandableListView;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-virtual {v4, v7}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 656
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mOverViewExpList:Landroid/widget/ExpandableListView;

    invoke-virtual {v4, v6}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 659
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7, v9, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 660
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 663
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 664
    iget v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    if-lez v4, :cond_0

    .line 666
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    invoke-static {v4, v7}, Lcom/android/settings_ex/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    .line 667
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    iget v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    invoke-virtual {v4, v7, v6, v8, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 672
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f08005f

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    .line 674
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f080060

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    .line 676
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    .line 677
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-static {p1, v4, v7}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 678
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 679
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 681
    new-instance v4, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    .line 682
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    .line 683
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 684
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-static {p1, v4, v7}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 685
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 686
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 687
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 701
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f080055

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    .line 702
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v7, 0x7f080056

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    .line 705
    new-instance v4, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-direct {v4, v0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapterSim1:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    .line 706
    new-instance v4, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-direct {v4, v0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapterSim2:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    .line 707
    new-instance v4, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-direct {v4, v0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapterOther:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    .line 713
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v7}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 715
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f08004c

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/widget/ChartDataUsageView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    .line 716
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v4, v7}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setListener(Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 717
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v4, v9}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 721
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f080057

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    .line 722
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f080058

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    .line 723
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f080059

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    .line 724
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f08005c

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/widget/PieChartView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppPieChart:Lcom/android/settings_ex/widget/PieChartView;

    .line 725
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f08005a

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    .line 726
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f08005b

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    .line 727
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f08005e

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    .line 729
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f08005d

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    .line 730
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    new-instance v4, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    .line 733
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    .line 734
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 735
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-static {p1, v4, v6}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 736
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 737
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 738
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 742
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f080061

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    .line 743
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    .line 745
    new-instance v4, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    iget v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    invoke-direct {v4, v5, v6}, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;-><init>(Lcom/android/settings_ex/net/UidDetailProvider;I)V

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAdapter:Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    .line 746
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 747
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAdapter:Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 749
    return-object v3

    .line 621
    .end local v2           #shouldInset:Z
    :catch_0
    move-exception v1

    .line 622
    .local v1, e:Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    move v2, v6

    .line 632
    goto/16 :goto_0

    .line 638
    .restart local v2       #shouldInset:Z
    :cond_2
    iput v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1014
    const-string v0, "DataUsage"

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 1016
    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 1018
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settings_ex/net/UidDetailProvider;->clearCache()V

    .line 1019
    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    .line 1021
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 1023
    invoke-virtual {p0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "appDetails"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 1032
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1033
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1034
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x1

    .line 940
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v12, v6

    .line 1009
    :goto_0
    return v12

    .line 942
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v8, v12

    .line 944
    .local v8, dataRoaming:Z
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v7

    .line 945
    .local v7, currentTab:Ljava/lang/String;
    const-string v1, "sim1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v11, v6

    .line 947
    .local v11, slotId:I
    :goto_2
    if-eqz v8, :cond_2

    .line 948
    invoke-static {p0, v11}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataRoamingFragment;->show(Lcom/android/settings_ex/DataUsageSummary;I)V

    goto :goto_0

    .end local v7           #currentTab:Ljava/lang/String;
    .end local v8           #dataRoaming:Z
    .end local v11           #slotId:I
    :cond_0
    move v8, v6

    .line 942
    goto :goto_1

    .restart local v7       #currentTab:Ljava/lang/String;
    .restart local v8       #dataRoaming:Z
    :cond_1
    move v11, v12

    .line 945
    goto :goto_2

    .line 951
    .restart local v11       #slotId:I
    :cond_2
    invoke-direct {p0, v11, v6}, Lcom/android/settings_ex/DataUsageSummary;->setDataRoaming(IZ)V

    goto :goto_0

    .line 964
    .end local v7           #currentTab:Ljava/lang/String;
    .end local v8           #dataRoaming:Z
    .end local v11           #slotId:I
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    move v10, v12

    .line 965
    .local v10, restrictBackground:Z
    :goto_3
    if-eqz v10, :cond_4

    .line 966
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    goto :goto_0

    .end local v10           #restrictBackground:Z
    :cond_3
    move v10, v6

    .line 964
    goto :goto_3

    .line 969
    .restart local v10       #restrictBackground:Z
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    .line 974
    .end local v10           #restrictBackground:Z
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    move v9, v12

    .line 975
    .local v9, mobileSplit:Z
    :goto_4
    invoke-direct {p0, v9}, Lcom/android/settings_ex/DataUsageSummary;->setMobilePolicySplit(Z)V

    .line 976
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 977
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .end local v9           #mobileSplit:Z
    :cond_5
    move v9, v6

    .line 974
    goto :goto_4

    .line 981
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_6

    move v6, v12

    :cond_6
    iput-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    .line 982
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_wifi"

    iget-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 983
    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 984
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 988
    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_7

    move v6, v12

    :cond_7
    iput-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    .line 989
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_ethernet"

    iget-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 990
    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 991
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateTabs()V

    goto/16 :goto_0

    .line 995
    :pswitch_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 996
    .local v0, activity:Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings_ex/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b08e9

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 1001
    .end local v0           #activity:Landroid/preference/PreferenceActivity;
    :pswitch_6
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1002
    const-string v1, "SyncState"

    const-string v2, "ignoring monkey\'s attempt to flip global sync state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1004
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_9

    move v6, v12

    :cond_9
    invoke-static {p0, v6}, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;->show(Lcom/android/settings_ex/DataUsageSummary;Z)V

    goto/16 :goto_0

    .line 940
    :pswitch_data_0
    .packed-switch 0x7f08027b
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 813
    const-string v0, "DataUsage"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 815
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    .line 817
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 823
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 824
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 21
    .parameter "menu"

    .prologue
    .line 833
    const-string v18, "DataUsage"

    const-string v19, "onPrepareOptionsMenu()"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 835
    .local v3, context:Landroid/content/Context;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v2

    .line 836
    .local v2, appDetailMode:Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v18

    if-nez v18, :cond_2

    const/4 v8, 0x1

    .line 840
    .local v8, isOwner:Z
    :goto_0
    const v18, 0x7f08027b

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v4

    .line 843
    .local v4, currentTab:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings_ex/DataUsageSummary;->isSimStatusNotReady(Ljava/lang/String;)Z

    move-result v9

    .line 844
    .local v9, isSimNotReady:Z
    if-nez v2, :cond_0

    if-eqz v9, :cond_3

    .line 845
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 876
    :goto_1
    const v18, 0x7f08027c

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    .line 879
    sget-object v18, Lcom/android/settings_ex/DataUsageSummary;->sSettingsMiscExt:Lcom/android/settings_ex/ext/ISettingsMiscExt;

    const v19, 0x7f0b08ce

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "bgDataSwitch"

    invoke-interface/range {v18 .. v20}, Lcom/android/settings_ex/ext/ISettingsMiscExt;->getDataUsageBackgroundStrByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 881
    .local v10, menuBgDataSwitch:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 885
    sget-boolean v18, Lcom/android/settings_ex/DataUsageSummary;->sIsWifiOnly:Z

    if-nez v18, :cond_9

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    move-object/from16 v19, v0

    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_8

    if-nez v2, :cond_8

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 894
    :goto_3
    const v18, 0x7f08027e

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    move-object/from16 v19, v0

    if-nez v2, :cond_a

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 898
    const v18, 0x7f08027d

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    .line 899
    .local v17, split4g:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_b

    if-eqz v8, :cond_b

    if-nez v2, :cond_b

    const/16 v18, 0x1

    :goto_5
    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 900
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v18

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 902
    const v18, 0x7f08027f

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 903
    .local v14, showWifi:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 904
    if-nez v2, :cond_c

    const/16 v18, 0x1

    :goto_6
    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 905
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 910
    :goto_7
    const v18, 0x7f080280

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 911
    .local v13, showEthernet:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 912
    if-nez v2, :cond_e

    const/16 v18, 0x1

    :goto_8
    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 913
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 918
    :goto_9
    const v18, 0x7f080281

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 919
    .local v11, metered:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_1

    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 920
    :cond_1
    if-nez v2, :cond_10

    const/16 v18, 0x1

    :goto_a
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 925
    :goto_b
    const v18, 0x7f080282

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 927
    .local v5, help:Landroid/view/MenuItem;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b0947

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, helpUrl:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_12

    .line 928
    new-instance v6, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 929
    .local v6, helpIntent:Landroid/content/Intent;
    const/high16 v18, 0x1080

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 931
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 932
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 936
    .end local v6           #helpIntent:Landroid/content/Intent;
    :goto_c
    return-void

    .line 836
    .end local v4           #currentTab:Ljava/lang/String;
    .end local v5           #help:Landroid/view/MenuItem;
    .end local v7           #helpUrl:Ljava/lang/String;
    .end local v8           #isOwner:Z
    .end local v9           #isSimNotReady:Z
    .end local v10           #menuBgDataSwitch:Ljava/lang/String;
    .end local v11           #metered:Landroid/view/MenuItem;
    .end local v13           #showEthernet:Landroid/view/MenuItem;
    .end local v14           #showWifi:Landroid/view/MenuItem;
    .end local v17           #split4g:Landroid/view/MenuItem;
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 846
    .restart local v4       #currentTab:Ljava/lang/String;
    .restart local v8       #isOwner:Z
    .restart local v9       #isSimNotReady:Z
    :cond_3
    const-string v18, "sim1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, "sim2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 847
    :cond_4
    const-string v18, "sim1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/16 v16, 0x0

    .line 849
    .local v16, slotId:I
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v15

    .line 850
    .local v15, simInfo:Landroid/provider/Telephony$SIMInfo;
    const-string v18, "DataUsage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "slotId : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " simInfo : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    if-eqz v15, :cond_6

    .line 852
    iget-object v12, v15, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 853
    .local v12, operatorName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f0b08b1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getDataRoaming(I)Z

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 847
    .end local v12           #operatorName:Ljava/lang/String;
    .end local v15           #simInfo:Landroid/provider/Telephony$SIMInfo;
    .end local v16           #slotId:I
    :cond_5
    const/16 v16, 0x1

    goto/16 :goto_d

    .line 860
    .restart local v15       #simInfo:Landroid/provider/Telephony$SIMInfo;
    .restart local v16       #slotId:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 863
    .end local v15           #simInfo:Landroid/provider/Telephony$SIMInfo;
    .end local v16           #slotId:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 886
    .restart local v10       #menuBgDataSwitch:Ljava/lang/String;
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 890
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 896
    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 899
    .restart local v17       #split4g:Landroid/view/MenuItem;
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 904
    .restart local v14       #showWifi:Landroid/view/MenuItem;
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 907
    :cond_d
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 912
    .restart local v13       #showEthernet:Landroid/view/MenuItem;
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_8

    .line 915
    :cond_f
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_9

    .line 920
    .restart local v11       #metered:Landroid/view/MenuItem;
    :cond_10
    const/16 v18, 0x0

    goto/16 :goto_a

    .line 922
    :cond_11
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 934
    .restart local v5       #help:Landroid/view/MenuItem;
    .restart local v7       #helpUrl:Ljava/lang/String;
    :cond_12
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_c
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 754
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 756
    const-string v1, "DataUsage"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateGeminiSimStatus()V

    .line 760
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsAirplaneModeOn:Z

    .line 761
    iput-boolean v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsUserEnabled:Z

    .line 763
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 764
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 768
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateTabs()V

    .line 771
    new-instance v1, Lcom/android/settings_ex/DataUsageSummary$5;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/DataUsageSummary$5;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 795
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_sim_setting"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 804
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mSimReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 806
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 1
    .parameter "restrictBackground"

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 1546
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1547
    return-void
.end method
