.class public Landroid/app/SearchDialog;
.super Landroid/app/Dialog;
.source "SearchDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SearchDialog$SearchBar;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final INSTANCE_KEY_APPDATA:Ljava/lang/String; = "data"

.field private static final INSTANCE_KEY_COMPONENT:Ljava/lang/String; = "comp"

.field private static final INSTANCE_KEY_USER_QUERY:Ljava/lang/String; = "uQry"

.field private static final LOG_TAG:Ljava/lang/String; = "SearchDialog"

.field private static final SEARCH_PLATE_LEFT_PADDING_NON_GLOBAL:I = 0x7


# instance fields
.field private mActivityContext:Landroid/content/Context;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppSearchData:Landroid/os/Bundle;

.field private mBadgeLabel:Landroid/widget/TextView;

.field private mCloseSearch:Landroid/view/View;

.field private mConfChangeListener:Landroid/content/BroadcastReceiver;

.field private mLaunchComponent:Landroid/content/ComponentName;

.field private final mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

.field private final mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private final mOnSuggestionSelectionListener:Landroid/widget/SearchView$OnSuggestionListener;

.field private mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

.field private mSearchAutoCompleteImeOptions:I

.field private mSearchPlate:Landroid/view/View;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private mUserQuery:Ljava/lang/String;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;

.field private mWorkingSpinner:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/SearchManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "searchManager"    # Landroid/app/SearchManager;

    .prologue
    const/high16 v3, 0x10000000

    .line 125
    invoke-static {p1}, Landroid/app/SearchDialog;->resolveDialogTheme(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 103
    new-instance v0, Landroid/app/SearchDialog$1;

    invoke-direct {v0, p0}, Landroid/app/SearchDialog$1;-><init>(Landroid/app/SearchDialog;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    .line 672
    new-instance v0, Landroid/app/SearchDialog$3;

    invoke-direct {v0, p0}, Landroid/app/SearchDialog$3;-><init>(Landroid/app/SearchDialog;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    .line 679
    new-instance v0, Landroid/app/SearchDialog$4;

    invoke-direct {v0, p0}, Landroid/app/SearchDialog$4;-><init>(Landroid/app/SearchDialog;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 692
    new-instance v0, Landroid/app/SearchDialog$5;

    invoke-direct {v0, p0}, Landroid/app/SearchDialog$5;-><init>(Landroid/app/SearchDialog;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mOnSuggestionSelectionListener:Landroid/widget/SearchView$OnSuggestionListener;

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 129
    iget-object v0, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    iget-object v0, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v2, "web_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 134
    iget-object v0, p0, Landroid/app/SearchDialog;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    return-void
.end method

.method static synthetic access$000(Landroid/app/SearchDialog;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/SearchDialog;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/SearchDialog;->onClosePressed()Z

    move-result v0

    return v0
.end method

.method private createContentView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 165
    const v1, 0x10900be

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->setContentView(I)V

    .line 168
    const v1, 0x1020384

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/app/SearchDialog$SearchBar;

    .line 169
    .local v0, "searchBar":Landroid/app/SearchDialog$SearchBar;
    invoke-virtual {v0, p0}, Landroid/app/SearchDialog$SearchBar;->setSearchDialog(Landroid/app/SearchDialog;)V

    .line 170
    const v1, 0x1020386

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    .line 171
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 172
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Landroid/app/SearchDialog;->mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 173
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Landroid/app/SearchDialog;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 174
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Landroid/app/SearchDialog;->mOnSuggestionSelectionListener:Landroid/widget/SearchView$OnSuggestionListener;

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    .line 175
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 177
    const v1, 0x1020027

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchDialog;->mCloseSearch:Landroid/view/View;

    .line 178
    iget-object v1, p0, Landroid/app/SearchDialog;->mCloseSearch:Landroid/view/View;

    new-instance v2, Landroid/app/SearchDialog$2;

    invoke-direct {v2, p0}, Landroid/app/SearchDialog$2;-><init>(Landroid/app/SearchDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x1020388

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    .line 187
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x102038d

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    .line 189
    const v1, 0x1020385

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    .line 190
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x102038c

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    .line 191
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1080605

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    .line 195
    invoke-virtual {p0, v3}, Landroid/app/SearchDialog;->setWorking(Z)V

    .line 198
    iget-object v1, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getImeOptions()I

    move-result v1

    iput v1, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    .line 202
    return-void
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/net/Uri;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "actionKey"    # I
    .param p6, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 589
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 590
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 594
    if-eqz p2, :cond_0

    .line 595
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 597
    :cond_0
    const-string/jumbo v1, "user_query"

    iget-object v2, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    if-eqz p4, :cond_1

    .line 599
    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    :cond_1
    if-eqz p3, :cond_2

    .line 602
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    :cond_2
    iget-object v1, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 605
    const-string v1, "app_data"

    iget-object v2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 607
    :cond_3
    if-eqz p5, :cond_4

    .line 608
    const-string v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 609
    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    :cond_4
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 612
    return-object v0
.end method

.method private doShow(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "appSearchData"    # Landroid/os/Bundle;

    .prologue
    .line 229
    invoke-direct {p0, p3, p4}, Landroid/app/SearchDialog;->show(Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    const/4 v0, 0x0

    .line 239
    :goto_0
    return v0

    .line 234
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/SearchDialog;->setUserQuery(Ljava/lang/String;)V

    .line 235
    if-eqz p2, :cond_1

    .line 236
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->selectAll()V

    .line 239
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isEmpty(Landroid/widget/AutoCompleteTextView;)Z
    .locals 1
    .param p1, "actv"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    .line 645
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOutOfBounds(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 496
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 497
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 498
    .local v2, "y":I
    iget-object v3, p0, Landroid/app/SearchDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    .line 499
    .local v0, "slop":I
    neg-int v3, v0

    if-lt v1, v3, :cond_0

    neg-int v3, v0

    if-lt v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-gt v1, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-le v2, v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 546
    if-nez p1, :cond_0

    .line 562
    :goto_0
    return-void

    .line 549
    :cond_0
    const-string v1, "SearchDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :try_start_0
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 558
    invoke-virtual {p0}, Landroid/app/SearchDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "SearchDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed launch activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onClosePressed()Z
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0, v0}, Landroid/app/SearchDialog;->isEmpty(Landroid/widget/AutoCompleteTextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {p0}, Landroid/app/SearchDialog;->dismiss()V

    .line 666
    const/4 v0, 0x1

    .line 669
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static resolveDialogTheme(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 114
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1160026

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 116
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method private setUserQuery(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 709
    if-nez p1, :cond_0

    .line 710
    const-string p1, ""

    .line 712
    :cond_0
    iput-object p1, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    .line 713
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 715
    return-void
.end method

.method private show(Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "appSearchData"    # Landroid/os/Bundle;

    .prologue
    .line 254
    iget-object v1, p0, Landroid/app/SearchDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 257
    .local v0, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {v0, p1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    .line 259
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v1, :cond_0

    .line 260
    const/4 v1, 0x0

    .line 279
    :goto_0
    return v1

    .line 263
    :cond_0
    iput-object p1, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    .line 264
    iput-object p2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    .line 265
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/SearchableInfo;->getActivityContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    .line 268
    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    invoke-direct {p0}, Landroid/app/SearchDialog;->createContentView()V

    .line 272
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 273
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setAppSearchData(Landroid/os/Bundle;)V

    .line 275
    invoke-virtual {p0}, Landroid/app/SearchDialog;->show()V

    .line 277
    :cond_1
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateUI()V

    .line 279
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateSearchAppIcon()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 433
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 436
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 437
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 444
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v4, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 445
    iget-object v4, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 446
    iget-object v4, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    const/4 v5, 0x7

    iget-object v6, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 447
    return-void

    .line 440
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 442
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    const-string v4, "SearchDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found, using generic app icon"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSearchAutoComplete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 428
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownDismissedOnCompletion(Z)V

    .line 429
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setForceIgnoreOutsideTouch(Z)V

    .line 430
    return-void
.end method

.method private updateSearchBadge()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 454
    const/16 v2, 0x8

    .line 455
    .local v2, "visibility":I
    const/4 v0, 0x0

    .line 456
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 459
    .local v1, "text":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->useBadgeIcon()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 460
    iget-object v3, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getIconId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 461
    const/4 v2, 0x0

    .line 469
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 470
    iget-object v3, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v3, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    return-void

    .line 463
    :cond_1
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->useBadgeLabel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    iget-object v3, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getLabelId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 465
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateUI()V
    .locals 3

    .prologue
    .line 387
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    .line 388
    iget-object v1, p0, Landroid/app/SearchDialog;->mDecor:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 389
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchAutoComplete()V

    .line 390
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchAppIcon()V

    .line 391
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchBadge()V

    .line 398
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 401
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 404
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 405
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 406
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 409
    :cond_0
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 410
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v1

    iput v1, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    .line 411
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    iget v2, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 415
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 416
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    const-string/jumbo v2, "nm"

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 421
    .end local v0    # "inputType":I
    :cond_1
    :goto_0
    return-void

    .line 418
    .restart local v0    # "inputType":I
    :cond_2
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    .line 506
    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 518
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 512
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 513
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 517
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    goto :goto_0
.end method

.method public launchQuerySearch()V
    .locals 2

    .prologue
    .line 524
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/SearchDialog;->launchQuerySearch(ILjava/lang/String;)V

    .line 525
    return-void
.end method

.method protected launchQuerySearch(ILjava/lang/String;)V
    .locals 8
    .param p1, "actionKey"    # I
    .param p2, "actionMsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 536
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 537
    .local v4, "query":Ljava/lang/String;
    const-string v1, "android.intent.action.SEARCH"

    .local v1, "action":Ljava/lang/String;
    move-object v0, p0

    move-object v3, v2

    move v5, p1

    move-object v6, p2

    .line 538
    invoke-direct/range {v0 .. v6}, Landroid/app/SearchDialog;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 539
    .local v7, "intent":Landroid/content/Intent;
    invoke-direct {p0, v7}, Landroid/app/SearchDialog;->launchIntent(Landroid/content/Intent;)V

    .line 540
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 652
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 654
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    :goto_0
    return-void

    .line 659
    :cond_0
    invoke-virtual {p0}, Landroid/app/SearchDialog;->cancel()V

    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchAppIcon()V

    .line 371
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchBadge()V

    .line 372
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/SearchDialog;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->ensureImeVisible(Z)V

    .line 376
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, -0x1

    .line 143
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 146
    .local v1, "theWindow":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 147
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 151
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 152
    const/16 v2, 0x37

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 153
    const/16 v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 154
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 157
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/SearchDialog;->setCanceledOnTouchOutside(Z)V

    .line 158
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 351
    if-nez p1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    const-string v3, "comp"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 354
    .local v1, "launchComponent":Landroid/content/ComponentName;
    const-string v3, "data"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 355
    .local v0, "appSearchData":Landroid/os/Bundle;
    const-string/jumbo v3, "uQry"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "userQuery":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/app/SearchDialog;->doShow(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 331
    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 340
    :goto_0
    return-object v0

    .line 333
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 336
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "comp"

    iget-object v2, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 337
    const-string v1, "data"

    iget-object v2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 338
    const-string/jumbo v1, "uQry"

    iget-object v2, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 284
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 287
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 288
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SearchDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 290
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 300
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 302
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/app/SearchDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 305
    iput-object v2, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    .line 306
    iput-object v2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    .line 307
    iput-object v2, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    .line 308
    iput-object v2, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 486
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Landroid/app/SearchDialog;->isOutOfBounds(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0}, Landroid/app/SearchDialog;->cancel()V

    .line 489
    const/4 v0, 0x1

    .line 492
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setListSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 568
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setListSelection(I)V

    .line 569
    return-void
.end method

.method public setWorking(Z)V
    .locals 3
    .param p1, "working"    # Z

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v2, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 319
    iget-object v0, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 320
    iget-object v0, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 321
    return-void

    :cond_0
    move v0, v1

    .line 318
    goto :goto_0
.end method

.method public show(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "appSearchData"    # Landroid/os/Bundle;

    .prologue
    .line 211
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/SearchDialog;->doShow(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    .line 212
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->showDropDownAfterLayout()V

    .line 217
    :cond_0
    return v0
.end method
