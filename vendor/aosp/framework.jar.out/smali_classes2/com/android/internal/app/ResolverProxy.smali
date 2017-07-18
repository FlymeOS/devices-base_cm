.class public Lcom/android/internal/app/ResolverProxy;
.super Lcom/android/internal/app/ResolverActivity;
.source "ResolverProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverProxy$ProxyListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResolverProxy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected bindProfileView()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    .line 54
    return-void
.end method

.method protected configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)Z
    .locals 1
    .param p2, "initialIntents"    # [Landroid/content/Intent;
    .param p4, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p3, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/ResolverActivity;->configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "launchedFromUid"    # I
    .param p6, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)",
            "Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/app/ResolverProxy;->createProxyAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverProxy$ProxyListAdapter;

    move-result-object v0

    .line 110
    .local v0, "adapter":Lcom/android/internal/app/ResolverProxy$ProxyListAdapter;
    if-eqz v0, :cond_0

    .end local v0    # "adapter":Lcom/android/internal/app/ResolverProxy$ProxyListAdapter;
    :goto_0
    return-object v0

    .line 112
    .restart local v0    # "adapter":Lcom/android/internal/app/ResolverProxy$ProxyListAdapter;
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/android/internal/app/ResolverActivity;->createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method protected createProxyAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverProxy$ProxyListAdapter;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "launchedFromUid"    # I
    .param p6, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)",
            "Lcom/android/internal/app/ResolverProxy$ProxyListAdapter;"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLayoutResource()I
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutResource()I

    move-result v0

    return v0
.end method

.method protected onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 0
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 84
    return-void
.end method

.method protected onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Z)V
    .locals 0
    .param p1, "adapterView"    # Landroid/widget/AbsListView;
    .param p2, "adapter"    # Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .param p3, "alwaysUseOption"    # Z

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Z)V

    .line 98
    return-void
.end method

.method protected onSetupVoiceInteraction()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onSetupVoiceInteraction()V

    .line 38
    return-void
.end method

.method protected optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .locals 1
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "index"    # I

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    move-result-object v0

    return-object v0
.end method

.method protected sendVoiceChoicesIfNeeded()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->sendVoiceChoicesIfNeeded()V

    .line 44
    return-void
.end method

.method protected setAlwaysUseOption(Z)V
    .locals 0
    .param p1, "alwaysUse"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverProxy;->mAlwaysUseOption:Z

    .line 124
    return-void
.end method

.method protected shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 1
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z

    move-result v0

    return v0
.end method

.method protected shouldGetActivityMetadata()Z
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->shouldGetActivityMetadata()Z

    move-result v0

    return v0
.end method

.method protected showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity;->showAppDetails(Landroid/content/pm/ResolveInfo;)V

    .line 74
    return-void
.end method

.method startSelected(IZZ)V
    .locals 0
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    .line 79
    return-void
.end method
