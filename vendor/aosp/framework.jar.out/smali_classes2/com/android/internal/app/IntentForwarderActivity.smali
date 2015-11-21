.class public Lcom/android/internal/app/IntentForwarderActivity;
.super Landroid/app/Activity;
.source "IntentForwarderActivity.java"


# static fields
.field public static FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

.field public static FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "IntentForwarderActivity"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    .line 49
    const-string v0, "com.android.internal.app.ForwardIntentToUserOwner"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

    .line 52
    const-string v0, "com.android.internal.app.ForwardIntentToManagedProfile"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getManagedProfile()I
    .locals 7

    .prologue
    .line 171
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 172
    .local v3, "userManager":Landroid/os/UserManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 173
    .local v1, "relatedUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 174
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 178
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_0
    return v4

    .line 176
    :cond_1
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has been called, but there is no managed profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/16 v4, -0x2710

    goto :goto_0
.end method


# virtual methods
.method canForward(Landroid/content/Intent;I)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "targetUserId"    # I

    .prologue
    const/4 v3, 0x0

    .line 135
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 136
    .local v1, "ipm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.CHOOSER"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    const-string v4, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v5, "An chooser intent with extra initial intents cannot be forwarded to a different user"

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    return v3

    .line 143
    :cond_0
    const-string v4, "android.intent.extra.REPLACEMENT_EXTRAS"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v5, "A chooser intent with replacement extras cannot be forwarded to a different user"

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_1
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .end local p1    # "intent":Landroid/content/Intent;
    check-cast p1, Landroid/content/Intent;

    .line 150
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "resolvedType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 152
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 155
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v4

    invoke-interface {v1, p1, v2, v4, p2}, Landroid/content/pm/IPackageManager;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v5, "PackageManagerService is dead?"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 60
    .local v4, "intentReceived":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "className":Ljava/lang/String;
    sget-object v12, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 65
    const v11, 0x104061c

    .line 66
    .local v11, "userMessageId":I
    const/4 v10, 0x0

    .line 75
    .local v10, "targetUserId":I
    :goto_0
    const/16 v12, -0x2710

    if-ne v10, v12, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 132
    :goto_1
    return-void

    .line 67
    .end local v10    # "targetUserId":I
    .end local v11    # "userMessageId":I
    :cond_0
    sget-object v12, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 68
    const v11, 0x104061d

    .line 69
    .restart local v11    # "userMessageId":I
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getManagedProfile()I

    move-result v10

    .restart local v10    # "targetUserId":I
    goto :goto_0

    .line 71
    .end local v10    # "targetUserId":I
    .end local v11    # "userMessageId":I
    :cond_1
    sget-object v12, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-class v14, Lcom/android/internal/app/IntentForwarderActivity;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " cannot be called directly"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v11, -0x1

    .line 73
    .restart local v11    # "userMessageId":I
    const/16 v10, -0x2710

    .restart local v10    # "targetUserId":I
    goto :goto_0

    .line 80
    :cond_2
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 81
    .local v7, "newIntent":Landroid/content/Intent;
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 83
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const/high16 v12, 0x3000000

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v0

    .line 88
    .local v0, "callingUserId":I
    invoke-virtual {p0, v7, v10}, Lcom/android/internal/app/IntentForwarderActivity;->canForward(Landroid/content/Intent;I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 89
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.CHOOSER"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 90
    const-string v12, "android.intent.extra.INTENT"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 91
    .local v3, "innerIntent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setContentUserHint(I)V

    .line 96
    .end local v3    # "innerIntent":Landroid/content/Intent;
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/high16 v13, 0x10000

    invoke-virtual {v12, v7, v13, v10}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 101
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_3

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v12, :cond_3

    const-string v12, "android"

    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-class v12, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-class v12, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    :cond_3
    const/4 v9, 0x1

    .line 107
    .local v9, "shouldShowDisclosure":Z
    :goto_3
    const/4 v12, 0x0

    :try_start_0
    invoke-virtual {p0, v7, v12, v10}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_4
    if-eqz v9, :cond_4

    .line 125
    invoke-virtual {p0, v11}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 131
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "shouldShowDisclosure":Z
    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    goto/16 :goto_1

    .line 93
    :cond_5
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setContentUserHint(I)V

    goto :goto_2

    .line 101
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 108
    .restart local v9    # "shouldShowDisclosure":Z
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/RuntimeException;
    const/4 v6, -0x1

    .line 110
    .local v6, "launchedFromUid":I
    const-string v5, "?"

    .line 112
    .local v5, "launchedFromPackage":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v13

    invoke-interface {v12, v13}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v6

    .line 114
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v13

    invoke-interface {v12, v13}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 119
    :goto_6
    sget-object v12, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to launch as UID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", while running in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 128
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v5    # "launchedFromPackage":Ljava/lang/String;
    .end local v6    # "launchedFromUid":I
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "shouldShowDisclosure":Z
    :cond_7
    sget-object v12, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "the intent: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "cannot be forwarded from user "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to user "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 116
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "launchedFromPackage":Ljava/lang/String;
    .restart local v6    # "launchedFromUid":I
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v9    # "shouldShowDisclosure":Z
    :catch_1
    move-exception v12

    goto :goto_6
.end method
