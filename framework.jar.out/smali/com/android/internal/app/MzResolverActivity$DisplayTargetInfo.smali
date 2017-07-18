.class final Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;
.super Ljava/lang/Object;
.source "MzResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MzResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayTargetInfo"
.end annotation


# static fields
.field private static fieldCloneID:Ljava/lang/reflect/Field;


# instance fields
.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayLabel:Ljava/lang/CharSequence;

.field extendedInfo:Ljava/lang/CharSequence;

.field public isTransform:Z

.field origIntent:Landroid/content/Intent;

.field ri:Landroid/content/pm/ResolveInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2477
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->fieldCloneID:Ljava/lang/reflect/Field;

    .line 2469
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "pLabel"    # Ljava/lang/CharSequence;
    .param p4, "pInfo"    # Ljava/lang/CharSequence;
    .param p5, "pOrigIntent"    # Landroid/content/Intent;

    .prologue
    .line 2480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2482
    iput-object p2, p0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->ri:Landroid/content/pm/ResolveInfo;

    .line 2483
    iput-object p3, p0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 2484
    const-string/jumbo v2, "zh_CN"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2485
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "com.tencent.mm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string/jumbo v3, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2486
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$string;->mz_wechat_friend:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 2493
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "com.tencent.mm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string/jumbo v3, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2494
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$drawable;->mz_resolver_ic_pengyouquan:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 2495
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2

    .line 2496
    const/4 v0, 0x0

    .line 2498
    .local v0, "cloneID":I
    :try_start_0
    sget-object v2, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->fieldCloneID:Ljava/lang/reflect/Field;

    if-nez v2, :cond_1

    .line 2499
    const-class v2, Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v3, "mCloneID"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->fieldCloneID:Ljava/lang/reflect/Field;

    .line 2500
    :cond_1
    sget-object v2, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->fieldCloneID:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2502
    :goto_1
    if-eqz v0, :cond_2

    .line 2503
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addMutilLaunchAppMarkToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 2506
    .end local v0    # "cloneID":I
    :cond_2
    iput-object p4, p0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->extendedInfo:Ljava/lang/CharSequence;

    .line 2507
    iput-object p5, p0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->origIntent:Landroid/content/Intent;

    .line 2481
    return-void

    .line 2487
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "com.tencent.mm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string/jumbo v3, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2488
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$string;->mz_wechat_timeline:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->displayLabel:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 2489
    :cond_4
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "com.sina.weibo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string/jumbo v3, "com.sina.weibo.composerinde.ComposerDispatchActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2490
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$string;->mz_sina_weibo:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->displayLabel:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 2501
    .restart local v0    # "cloneID":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_1
.end method
