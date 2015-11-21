.class public abstract Landroid/preference/PreferenceActivity;
.super Landroid/app/ListActivity;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceActivity$Header;,
        Landroid/preference/PreferenceActivity$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final BACK_STACK_PREFS:Ljava/lang/String; = ":android:prefs"

.field private static final CUR_HEADER_TAG:Ljava/lang/String; = ":android:cur_header"

.field public static final EXTRA_NO_HEADERS:Ljava/lang/String; = ":android:no_headers"

.field private static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field private static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field private static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":android:show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":android:show_fragment_args"

.field public static final EXTRA_SHOW_FRAGMENT_SHORT_TITLE:Ljava/lang/String; = ":android:show_fragment_short_title"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":android:show_fragment_title"

.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final HEADERS_TAG:Ljava/lang/String; = ":android:headers"

.field public static final HEADER_ID_UNDEFINED:J = -0x1L

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final MSG_BUILD_HEADERS:I = 0x2

.field private static final PREFERENCES_TAG:Ljava/lang/String; = ":android:preferences"

.field private static final TAG:Ljava/lang/String; = "PreferenceActivity"


# instance fields
.field private mCurHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private mHandler:Landroid/os/Handler;

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mNextButton:Landroid/widget/Button;

.field private mPreferenceHeaderItemResId:I

.field private mPreferenceHeaderRemoveEmptyIcon:Z

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSinglePane:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    .line 215
    iput v1, p0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 216
    iput-boolean v1, p0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 225
    new-instance v0, Landroid/preference/PreferenceActivity$1;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceActivity$1;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    .line 327
    return-void
.end method

.method static synthetic access$000(Landroid/preference/PreferenceActivity;)V
    .locals 0
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 123
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 123
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 123
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Landroid/preference/PreferenceActivity;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 123
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    .prologue
    .line 1414
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1415
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 1416
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 1417
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1418
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1419
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1422
    :cond_0
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1409
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1411
    :goto_0
    return-void

    .line 1410
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 1437
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_1

    .line 1438
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1439
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1441
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Modern two-pane PreferenceActivity requires use of a PreferenceFragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1444
    :cond_1
    return-void
.end method

.method private switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1212
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ":android:prefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1214
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1215
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid fragment for this activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1218
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1219
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1220
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1221
    const v2, 0x102035f

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1222
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1223
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1495
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1497
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1498
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 2
    .param p1, "preferencesResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1511
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1513
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1515
    return-void
.end method

.method findBestMatchingHeader(Landroid/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Landroid/preference/PreferenceActivity$Header;
    .locals 9
    .param p1, "cur"    # Landroid/preference/PreferenceActivity$Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceActivity$Header;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)",
            "Landroid/preference/PreferenceActivity$Header;"
        }
    .end annotation

    .prologue
    .local p2, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v8, 0x1

    .line 1266
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1267
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1268
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 1269
    .local v3, "oh":Landroid/preference/PreferenceActivity$Header;
    if-eq p1, v3, :cond_0

    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1271
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1272
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    .end local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1290
    .local v0, "NM":I
    if-ne v0, v8, :cond_7

    .line 1291
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    move-object v3, v4

    .line 1307
    :cond_2
    :goto_1
    return-object v3

    .line 1275
    .end local v0    # "NM":I
    .restart local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_3
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1276
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1277
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1279
    :cond_5
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_6

    .line 1280
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1281
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1283
    :cond_6
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 1284
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1285
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1292
    .end local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    .restart local v0    # "NM":I
    :cond_7
    if-le v0, v8, :cond_b

    .line 1293
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    .line 1294
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 1295
    .restart local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1299
    :cond_8
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_9

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1302
    :cond_9
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1293
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1307
    .end local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_b
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1541
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1542
    const/4 v0, 0x0

    .line 1545
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 2
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1380
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_1

    .line 1381
    invoke-virtual {p0, p2, p3}, Landroid/preference/PreferenceActivity;->setResult(ILandroid/content/Intent;)V

    .line 1382
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    .line 1393
    :cond_0
    :goto_0
    return-void

    .line 1385
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 1386
    if-eqz p1, :cond_0

    .line 1387
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1388
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 706
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1562
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1433
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1479
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1482
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeaders()Z
    .locals 1

    .prologue
    .line 697
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 1558
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateHeaders()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 788
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 789
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 791
    :cond_0
    return-void
.end method

.method public isMultiPane()Z
    .locals 1

    .prologue
    .line 714
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 932
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 933
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subclasses of PreferenceActivity must override isValidFragment(String) to verify that the Fragment class is valid! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has not checked if fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is valid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public loadHeadersFromResource(ILjava/util/List;)V
    .locals 17
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 801
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v10, 0x0

    .line 803
    .local v10, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 804
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 808
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x1

    if-eq v13, v14, :cond_1

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 812
    :cond_1
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 813
    .local v8, "nodeName":Ljava/lang/String;
    const-string/jumbo v14, "preference-headers"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 814
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "XML document must start with <preference-headers> tag; found"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "nodeName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_0
    move-exception v4

    .line 915
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Error parsing headers"

    invoke-direct {v14, v15, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 919
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v14

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v14

    .line 819
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v8    # "nodeName":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_3
    const/4 v3, 0x0

    .line 821
    .local v3, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 823
    .local v9, "outerDepth":I
    :cond_4
    :goto_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_16

    const/4 v14, 0x3

    if-ne v13, v14, :cond_5

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    if-le v14, v9, :cond_16

    .line 824
    :cond_5
    const/4 v14, 0x3

    if-eq v13, v14, :cond_4

    const/4 v14, 0x4

    if-eq v13, v14, :cond_4

    .line 828
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 829
    const-string v14, "header"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 830
    new-instance v5, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v5}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 832
    .local v5, "header":Landroid/preference/PreferenceActivity$Header;
    sget-object v14, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14}, Landroid/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 834
    .local v11, "sa":Landroid/content/res/TypedArray;
    const/4 v14, 0x1

    const/4 v15, -0x1

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    int-to-long v14, v14

    iput-wide v14, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 837
    const/4 v14, 0x2

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 839
    .local v12, "tv":Landroid/util/TypedValue;
    if-eqz v12, :cond_6

    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_6

    .line 840
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    if-eqz v14, :cond_d

    .line 841
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    iput v14, v5, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 846
    :cond_6
    :goto_1
    const/4 v14, 0x3

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 848
    if-eqz v12, :cond_7

    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_7

    .line 849
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    if-eqz v14, :cond_e

    .line 850
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    iput v14, v5, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    .line 855
    :cond_7
    :goto_2
    const/4 v14, 0x5

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 857
    if-eqz v12, :cond_8

    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_8

    .line 858
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    if-eqz v14, :cond_f

    .line 859
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    iput v14, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 864
    :cond_8
    :goto_3
    const/4 v14, 0x6

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 866
    if-eqz v12, :cond_9

    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_9

    .line 867
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    if-eqz v14, :cond_10

    .line 868
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    iput v14, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 873
    :cond_9
    :goto_4
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v5, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 875
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 877
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 879
    if-nez v3, :cond_a

    .line 880
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "curBundle":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 883
    .restart local v3    # "curBundle":Landroid/os/Bundle;
    :cond_a
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 885
    .local v6, "innerDepth":I
    :cond_b
    :goto_5
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_c

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    if-le v14, v6, :cond_13

    .line 886
    :cond_c
    const/4 v14, 0x3

    if-eq v13, v14, :cond_b

    const/4 v14, 0x4

    if-eq v13, v14, :cond_b

    .line 890
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 891
    .local v7, "innerNodeName":Ljava/lang/String;
    const-string v14, "extra"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 892
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string v15, "extra"

    invoke-virtual {v14, v15, v2, v3}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 893
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 916
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "curBundle":Landroid/os/Bundle;
    .end local v5    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v6    # "innerDepth":I
    .end local v7    # "innerNodeName":Ljava/lang/String;
    .end local v8    # "nodeName":Ljava/lang/String;
    .end local v9    # "outerDepth":I
    .end local v11    # "sa":Landroid/content/res/TypedArray;
    .end local v12    # "tv":Landroid/util/TypedValue;
    .end local v13    # "type":I
    :catch_1
    move-exception v4

    .line 917
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Error parsing headers"

    invoke-direct {v14, v15, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 843
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v3    # "curBundle":Landroid/os/Bundle;
    .restart local v5    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v8    # "nodeName":Ljava/lang/String;
    .restart local v9    # "outerDepth":I
    .restart local v11    # "sa":Landroid/content/res/TypedArray;
    .restart local v12    # "tv":Landroid/util/TypedValue;
    .restart local v13    # "type":I
    :cond_d
    :try_start_4
    iget-object v14, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v14, v5, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 852
    :cond_e
    iget-object v14, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v14, v5, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 861
    :cond_f
    iget-object v14, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v14, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto :goto_3

    .line 870
    :cond_10
    iget-object v14, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v14, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto :goto_4

    .line 895
    .restart local v6    # "innerDepth":I
    .restart local v7    # "innerNodeName":Ljava/lang/String;
    :cond_11
    const-string v14, "intent"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 896
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-static {v14, v10, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v14

    iput-object v14, v5, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_5

    .line 899
    :cond_12
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 903
    .end local v7    # "innerNodeName":Ljava/lang/String;
    :cond_13
    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v14

    if-lez v14, :cond_14

    .line 904
    iput-object v3, v5, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 905
    const/4 v3, 0x0

    .line 908
    :cond_14
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 910
    .end local v5    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v6    # "innerDepth":I
    .end local v11    # "sa":Landroid/content/res/TypedArray;
    .end local v12    # "tv":Landroid/util/TypedValue;
    :cond_15
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 919
    :cond_16
    if-eqz v10, :cond_17

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 921
    :cond_17
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1017
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1019
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 1022
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 781
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "shortTitleRes"    # I

    .prologue
    .line 1090
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1091
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1092
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    const-string v1, ":android:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1094
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1095
    const-string v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1096
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1097
    return-object v0
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 1026
    invoke-super {p0}, Landroid/app/ListActivity;->onContentChanged()V

    .line 1028
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1029
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->postBindPreferences()V

    .line 1031
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 529
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 532
    const/16 v21, 0x0

    sget-object v22, Lcom/android/internal/R$styleable;->PreferenceActivity:[I

    const v23, 0x116001a

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 537
    .local v19, "sa":Landroid/content/res/TypedArray;
    const/16 v21, 0x0

    const v22, 0x109009c

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 541
    .local v18, "layoutResId":I
    const/16 v21, 0x1

    const v22, 0x1090096

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 544
    const/16 v21, 0x2

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 548
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 550
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    .line 552
    const v21, 0x102035d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/FrameLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 553
    const v21, 0x102035e

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 554
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v10

    .line 555
    .local v10, "hidingHeaders":Z
    if-nez v10, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v21

    if-nez v21, :cond_6

    :cond_0
    const/16 v21, 0x1

    :goto_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    .line 556
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, ":android:show_fragment"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 557
    .local v12, "initialFragment":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, ":android:show_fragment_args"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 558
    .local v11, "initialArguments":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, ":android:show_fragment_title"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 559
    .local v15, "initialTitle":I
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, ":android:show_fragment_short_title"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 561
    .local v13, "initialShortTitle":I
    if-eqz p1, :cond_7

    .line 564
    const-string v21, ":android:headers"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 565
    .local v9, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    if-eqz v9, :cond_1

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 567
    const-string v21, ":android:cur_header"

    const/16 v22, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 569
    .local v7, "curHeader":I
    if-ltz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_1

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 609
    .end local v7    # "curHeader":I
    .end local v9    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    :cond_1
    :goto_1
    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 611
    const v21, 0x102035c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 613
    if-eqz v15, :cond_2

    .line 614
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 615
    .local v16, "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 617
    .local v14, "initialShortTitleStr":Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 641
    .end local v14    # "initialShortTitleStr":Ljava/lang/CharSequence;
    .end local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 642
    .local v17, "intent":Landroid/content/Intent;
    const-string v21, "extra_prefs_show_button_bar"

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 644
    const v21, 0x1020360

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 646
    const v21, 0x1020361

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 647
    .local v5, "backButton":Landroid/widget/Button;
    new-instance v21, Landroid/preference/PreferenceActivity$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$2;-><init>(Landroid/preference/PreferenceActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    const v21, 0x1020362

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    .line 654
    .local v20, "skipButton":Landroid/widget/Button;
    new-instance v21, Landroid/preference/PreferenceActivity$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$3;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    const v21, 0x1020363

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    new-instance v22, Landroid/preference/PreferenceActivity$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$4;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    const-string v21, "extra_prefs_set_next_text"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 670
    const-string v21, "extra_prefs_set_next_text"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 671
    .local v6, "buttonText":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 678
    .end local v6    # "buttonText":Ljava/lang/String;
    :cond_3
    :goto_4
    const-string v21, "extra_prefs_set_back_text"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 679
    const-string v21, "extra_prefs_set_back_text"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 680
    .restart local v6    # "buttonText":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 681
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 687
    .end local v6    # "buttonText":Ljava/lang/String;
    :cond_4
    :goto_5
    const-string v21, "extra_prefs_show_skip"

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 688
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 691
    .end local v5    # "backButton":Landroid/widget/Button;
    .end local v20    # "skipButton":Landroid/widget/Button;
    :cond_5
    return-void

    .line 555
    .end local v11    # "initialArguments":Landroid/os/Bundle;
    .end local v12    # "initialFragment":Ljava/lang/String;
    .end local v13    # "initialShortTitle":I
    .end local v15    # "initialTitle":I
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_6
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 575
    .restart local v11    # "initialArguments":Landroid/os/Bundle;
    .restart local v12    # "initialFragment":Ljava/lang/String;
    .restart local v13    # "initialShortTitle":I
    .restart local v15    # "initialTitle":I
    :cond_7
    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 579
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 580
    if-eqz v15, :cond_1

    .line 581
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 582
    .restart local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 584
    .restart local v14    # "initialShortTitleStr":Ljava/lang/CharSequence;
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 582
    .end local v14    # "initialShortTitleStr":Ljava/lang/CharSequence;
    :cond_8
    const/4 v14, 0x0

    goto :goto_6

    .line 589
    .end local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_1

    .line 595
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 596
    if-nez v12, :cond_a

    .line 597
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v8

    .line 598
    .local v8, "h":Landroid/preference/PreferenceActivity$Header;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto/16 :goto_1

    .line 600
    .end local v8    # "h":Landroid/preference/PreferenceActivity$Header;
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 615
    .restart local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 619
    .end local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_e

    .line 620
    new-instance v21, Landroid/preference/PreferenceActivity$HeaderAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    move/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/preference/PreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 622
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 624
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 628
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 633
    :cond_e
    const v21, 0x109009e

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    .line 634
    const v21, 0x102035d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/FrameLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 635
    const v21, 0x102035f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 636
    new-instance v21, Landroid/preference/PreferenceManager;

    const/16 v22, 0x64

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    goto/16 :goto_3

    .line 675
    .restart local v5    # "backButton":Landroid/widget/Button;
    .restart local v6    # "buttonText":Ljava/lang/String;
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v20    # "skipButton":Landroid/widget/Button;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 684
    :cond_10
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 963
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 964
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 965
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 967
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityDestroy()V

    .line 970
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 4

    .prologue
    .line 747
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 748
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 749
    .local v0, "h":Landroid/preference/PreferenceActivity$Header;
    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 750
    return-object v0

    .line 747
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 753
    .end local v0    # "h":Landroid/preference/PreferenceActivity$Header;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Must have at least one header with a fragment"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onGetNewHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 1

    .prologue
    .line 763
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 7
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 1056
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1057
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_2

    .line 1058
    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1059
    .local v5, "titleRes":I
    iget v6, p1, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1060
    .local v6, "shortTitleRes":I
    if-nez v5, :cond_0

    .line 1061
    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 1062
    const/4 v6, 0x0

    .line 1064
    :cond_0
    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1072
    .end local v5    # "titleRes":I
    .end local v6    # "shortTitleRes":I
    :cond_1
    :goto_0
    return-void

    .line 1067
    :cond_2
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 1069
    :cond_3
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 1070
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onIsHidingHeaders()Z
    .locals 3

    .prologue
    .line 736
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:no_headers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onIsMultiPane()Z
    .locals 3

    .prologue
    .line 723
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 725
    .local v0, "preferMultiPane":Z
    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1035
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1044
    :cond_0
    :goto_0
    return-void

    .line 1038
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1040
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 1041
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1042
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .end local v0    # "item":Ljava/lang/Object;
    invoke-virtual {p0, v0, p3}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1550
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->dispatchNewIntent(Landroid/content/Intent;)V

    .line 1553
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 1397
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1399
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1525
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 998
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v2, :cond_0

    .line 999
    const-string v2, ":android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1000
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1001
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 1002
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 1003
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1004
    iput-object p1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1013
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 1012
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 974
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 976
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 977
    const-string v3, ":android:headers"

    iget-object v4, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 978
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v3, :cond_0

    .line 979
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 980
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 981
    const-string v3, ":android:cur_header"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 986
    .end local v1    # "index":I
    :cond_0
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v3, :cond_1

    .line 987
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 988
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_1

    .line 989
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 990
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 991
    const-string v3, ":android:preferences"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 994
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v2    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 954
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 956
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityStop()V

    .line 959
    :cond_0
    return-void
.end method

.method public setListFooter(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 946
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 947
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 950
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1184
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1187
    :cond_0
    return-void
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1456
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1458
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceManager;->setPreferences(Landroid/preference/PreferenceScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1459
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->postBindPreferences()V

    .line 1460
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1462
    .local v0, "title":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1463
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1466
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 1190
    iput-object p1, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1191
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1192
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1193
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1197
    :goto_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Landroid/preference/PreferenceActivity$Header;)V

    .line 1198
    return-void

    .line 1195
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_0
.end method

.method showBreadCrumbs(Landroid/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 1201
    if-eqz p1, :cond_2

    .line 1202
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1203
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1204
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1205
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1209
    .end local v0    # "title":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 1207
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 1142
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v3, :cond_4

    .line 1143
    const v3, 0x1020016

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1146
    .local v1, "crumbs":Landroid/view/View;
    :try_start_0
    check-cast v1, Landroid/app/FragmentBreadCrumbs;

    .end local v1    # "crumbs":Landroid/view/View;
    iput-object v1, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v3, :cond_1

    .line 1152
    if-eqz p1, :cond_0

    .line 1153
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1173
    :cond_0
    :goto_0
    return-void

    .line 1147
    :catch_0
    move-exception v2

    .line 1148
    .local v2, "e":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1157
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_1
    iget-boolean v3, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v3, :cond_3

    .line 1158
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, v4}, Landroid/app/FragmentBreadCrumbs;->setVisibility(I)V

    .line 1160
    const v3, 0x10202df

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1161
    .local v0, "bcSection":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    :cond_2
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1164
    .end local v0    # "bcSection":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 1165
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, p0}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    .line 1167
    :cond_4
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3}, Landroid/app/FragmentBreadCrumbs;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_5

    .line 1168
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1170
    :cond_5
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, p1, p2}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1171
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, v5, v5, v5}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 1318
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1319
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x102035f

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1320
    if-eqz p2, :cond_0

    .line 1321
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1322
    const-string v1, ":android:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1326
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1327
    return-void

    .line 1324
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 9
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 1350
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_0

    .line 1351
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1368
    :goto_0
    return-void

    .line 1353
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v7

    .line 1354
    .local v7, "f":Landroid/app/Fragment;
    if-eqz p5, :cond_1

    .line 1355
    invoke-virtual {v7, p5, p6}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1357
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 1358
    .local v8, "transaction":Landroid/app/FragmentTransaction;
    const v0, 0x102035f

    invoke-virtual {v8, v0, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1359
    if-eqz p3, :cond_3

    .line 1360
    invoke-virtual {v8, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1364
    :cond_2
    :goto_1
    const/16 v0, 0x1001

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1365
    const-string v0, ":android:prefs"

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1366
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 1361
    :cond_3
    if-eqz p4, :cond_2

    .line 1362
    invoke-virtual {v8, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .locals 7
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I

    .prologue
    const/4 v5, 0x0

    .line 1106
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1107
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleRes"    # I
    .param p6, "shortTitleRes"    # I

    .prologue
    .line 1128
    invoke-virtual {p0, p1, p2, p5, p6}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1129
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 1130
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1134
    :goto_0
    return-void

    .line 1132
    :cond_0
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 1251
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-ne v0, p1, :cond_0

    .line 1254
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":android:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1263
    :goto_0
    return-void

    .line 1257
    :cond_0
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1258
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t switch to header that has no fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1260
    :cond_1
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Landroid/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1261
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_0
.end method

.method public switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1233
    const/4 v1, 0x0

    .line 1234
    .local v1, "selectedHeader":Landroid/preference/PreferenceActivity$Header;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1235
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1236
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "selectedHeader":Landroid/preference/PreferenceActivity$Header;
    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 1240
    .restart local v1    # "selectedHeader":Landroid/preference/PreferenceActivity$Header;
    :cond_0
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1241
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1242
    return-void

    .line 1234
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
