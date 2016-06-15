.class public Lcom/android/internal/app/MzChooserActivity;
.super Lcom/android/internal/app/MzResolverActivity;
.source "MzChooserActivity.java"


# instance fields
.field private mReplacementExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/internal/app/MzResolverActivity;-><init>()V

    return-void
.end method

.method private modifyTargetIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "in"    # Landroid/content/Intent;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    :cond_0
    const/high16 v1, 0x8080000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    :cond_1
    return-void
.end method


# virtual methods
.method public getReplacementIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    .line 75
    iget-object v2, p0, Lcom/android/internal/app/MzChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/android/internal/app/MzChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, "replExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 78
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 79
    .local v1, "result":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 83
    .end local v0    # "replExtras":Landroid/os/Bundle;
    .end local v1    # "result":Landroid/content/Intent;
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 33
    invoke-virtual {p0}, Lcom/android/internal/app/MzChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 34
    .local v10, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    .line 35
    .local v12, "targetParcelable":Landroid/os/Parcelable;
    instance-of v0, v12, Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 36
    const-string v0, "ChooserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Target is not an intent: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Lcom/android/internal/app/MzChooserActivity;->finish()V

    .line 38
    invoke-super {p0, v6}, Lcom/android/internal/app/MzResolverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    :goto_0
    return-void

    :cond_0
    move-object v2, v12

    .line 41
    check-cast v2, Landroid/content/Intent;

    .line 42
    .local v2, "target":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 46
    :cond_1
    const-string v0, "android.intent.extra.REPLACEMENT_EXTRAS"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MzChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    .line 47
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 48
    .local v3, "title":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 49
    .local v4, "defaultTitleRes":I
    if-nez v3, :cond_2

    .line 51
    invoke-virtual {p0}, Lcom/android/internal/app/MzChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$string;->mz_share_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 53
    :cond_2
    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v11

    .line 54
    .local v11, "pa":[Landroid/os/Parcelable;
    const/4 v5, 0x0

    .line 55
    .local v5, "initialIntents":[Landroid/content/Intent;
    if-eqz v11, :cond_4

    .line 56
    array-length v0, v11

    new-array v5, v0, [Landroid/content/Intent;

    .line 57
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v0, v11

    if-ge v8, v0, :cond_4

    .line 58
    aget-object v0, v11, v8

    instance-of v0, v0, Landroid/content/Intent;

    if-nez v0, :cond_3

    .line 59
    const-string v0, "ChooserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initial intent #"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " not an Intent: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v7, v11, v8

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/app/MzChooserActivity;->finish()V

    .line 61
    invoke-super {p0, v6}, Lcom/android/internal/app/MzResolverActivity;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 64
    :cond_3
    aget-object v9, v11, v8

    check-cast v9, Landroid/content/Intent;

    .line 66
    .local v9, "in":Landroid/content/Intent;
    aput-object v9, v5, v8

    .line 57
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 69
    .end local v8    # "i":I
    .end local v9    # "in":Landroid/content/Intent;
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MzChooserActivity;->setSafeForwardingMode(Z)V

    .line 70
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-super/range {v0 .. v7}, Lcom/android/internal/app/MzResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    goto :goto_0
.end method
