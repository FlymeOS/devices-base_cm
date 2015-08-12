.class Landroid/app/Instrumentation$RecommendActivity;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecommendActivity"
.end annotation


# instance fields
.field mContextThread:Landroid/os/IBinder;

.field mIntent:Landroid/content/Intent;

.field mOptions:Landroid/os/Bundle;

.field mRequestCode:I

.field mTarget:Landroid/app/Activity;

.field mToken:Landroid/os/IBinder;

.field mWho:Landroid/content/Context;

.field final synthetic this$0:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0
    .param p2, "who"    # Landroid/content/Context;
    .param p3, "contextThread"    # Landroid/os/IBinder;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "target"    # Landroid/app/Activity;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "requestCode"    # I
    .param p8, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1960
    iput-object p1, p0, Landroid/app/Instrumentation$RecommendActivity;->this$0:Landroid/app/Instrumentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1961
    iput-object p2, p0, Landroid/app/Instrumentation$RecommendActivity;->mWho:Landroid/content/Context;

    .line 1962
    iput-object p3, p0, Landroid/app/Instrumentation$RecommendActivity;->mContextThread:Landroid/os/IBinder;

    .line 1963
    iput-object p4, p0, Landroid/app/Instrumentation$RecommendActivity;->mToken:Landroid/os/IBinder;

    .line 1964
    iput-object p5, p0, Landroid/app/Instrumentation$RecommendActivity;->mTarget:Landroid/app/Activity;

    .line 1965
    iput-object p6, p0, Landroid/app/Instrumentation$RecommendActivity;->mIntent:Landroid/content/Intent;

    .line 1966
    iput p7, p0, Landroid/app/Instrumentation$RecommendActivity;->mRequestCode:I

    .line 1967
    iput-object p8, p0, Landroid/app/Instrumentation$RecommendActivity;->mOptions:Landroid/os/Bundle;

    .line 1968
    return-void
.end method

.method private start(ILandroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 14
    .param p1, "result"    # I
    .param p2, "who"    # Landroid/content/Context;
    .param p3, "contextThread"    # Landroid/os/IBinder;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "target"    # Landroid/app/Activity;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "requestCode"    # I
    .param p8, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1978
    move-object/from16 v2, p3

    check-cast v2, Landroid/app/IApplicationThread;

    .line 1979
    .local v2, "whoThread":Landroid/app/IApplicationThread;
    move-object/from16 v0, p6

    iget-object v1, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v1}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v12

    .line 1980
    .local v12, "flag":I
    and-int/lit16 v1, v12, 0x800

    if-nez v1, :cond_1

    const/4 v13, 0x1

    .line 1981
    .local v13, "isRecommend":Z
    :goto_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v13, :cond_0

    .line 1987
    new-instance v4, Landroid/content/Intent;

    const-string v1, "android.intent.action.RECOMMEND"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1988
    .local v4, "itt":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1989
    const-string v1, "android.intent.extra.INTENT"

    move-object/from16 v0, p6

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1991
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    iget-object v7, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    :goto_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p4

    move/from16 v8, p7

    move-object/from16 v11, p8

    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2002
    .end local v4    # "itt":Landroid/content/Intent;
    :cond_0
    :goto_2
    return-void

    .line 1980
    .end local v13    # "isRecommend":Z
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 1991
    .restart local v4    # "itt":Landroid/content/Intent;
    .restart local v13    # "isRecommend":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 1997
    :catch_0
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method start(I)V
    .locals 9
    .param p1, "result"    # I

    .prologue
    .line 1971
    iget-object v2, p0, Landroid/app/Instrumentation$RecommendActivity;->mWho:Landroid/content/Context;

    iget-object v3, p0, Landroid/app/Instrumentation$RecommendActivity;->mContextThread:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/app/Instrumentation$RecommendActivity;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/Instrumentation$RecommendActivity;->mTarget:Landroid/app/Activity;

    iget-object v6, p0, Landroid/app/Instrumentation$RecommendActivity;->mIntent:Landroid/content/Intent;

    iget v7, p0, Landroid/app/Instrumentation$RecommendActivity;->mRequestCode:I

    iget-object v8, p0, Landroid/app/Instrumentation$RecommendActivity;->mOptions:Landroid/os/Bundle;

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/app/Instrumentation$RecommendActivity;->start(ILandroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1972
    return-void
.end method
