.class public Lcom/android/internal/util/cm/LockscreenShortcutsHelper;
.super Ljava/lang/Object;
.source "LockscreenShortcutsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/cm/LockscreenShortcutsHelper$TargetInfo;,
        Lcom/android/internal/util/cm/LockscreenShortcutsHelper$OnChangeListener;,
        Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;
    }
.end annotation


# static fields
.field private static final CAMERA_DEFAULT_ICON:Ljava/lang/String; = "ic_camera_alt_24dp"

.field public static final DEFAULT:Ljava/lang/String; = "default"

.field private static final DELIMITER:Ljava/lang/String; = "|"

.field public static final NONE:Ljava/lang/String; = "none"

.field private static final PHONE_DEFAULT_ICON:Ljava/lang/String; = "ic_phone_24dp"

.field private static final SYSTEM_UI_PKGNAME:Ljava/lang/String; = "com.android.systemui"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/android/internal/util/cm/LockscreenShortcutsHelper$OnChangeListener;

.field private mObserver:Landroid/database/ContentObserver;

.field private mSystemUiResources:Landroid/content/res/Resources;

.field private mTargetActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/cm/LockscreenShortcutsHelper$OnChangeListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/internal/util/cm/LockscreenShortcutsHelper$OnChangeListener;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$1;-><init>(Lcom/android/internal/util/cm/LockscreenShortcutsHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mObserver:Landroid/database/ContentObserver;

    .line 51
    iput-object p1, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mContext:Landroid/content/Context;

    .line 52
    if-eqz p2, :cond_0

    .line 53
    iput-object p2, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mListener:Lcom/android/internal/util/cm/LockscreenShortcutsHelper$OnChangeListener;

    .line 54
    iget-object v0, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_target_actions"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->fetchTargets()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/util/cm/LockscreenShortcutsHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/util/cm/LockscreenShortcutsHelper;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->fetchTargets()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/util/cm/LockscreenShortcutsHelper;)Lcom/android/internal/util/cm/LockscreenShortcutsHelper$OnChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/util/cm/LockscreenShortcutsHelper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mListener:Lcom/android/internal/util/cm/LockscreenShortcutsHelper$OnChangeListener;

    return-object v0
.end method

.method private fetchTargets()V
    .locals 5

    .prologue
    .line 87
    iget-object v2, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_target_actions"

    const-string v4, "|"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getDelimitedStringAsList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    .line 89
    invoke-static {}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;->values()[Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;

    move-result-object v2

    array-length v2, v2

    iget-object v3, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v1, v2, v3

    .line 90
    .local v1, "itemsToPad":I
    if-lez v1, :cond_0

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 92
    iget-object v2, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    const-string v3, "default"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private getFriendlyActivityName(Landroid/content/Intent;Z)Ljava/lang/String;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "labelOnly"    # Z

    .prologue
    .line 162
    iget-object v3, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 163
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 164
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    .line 165
    .local v1, "friendlyName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    if-nez v1, :cond_0

    if-nez p2, :cond_0

    .line 168
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 171
    :cond_0
    if-nez v1, :cond_1

    if-eqz p2, :cond_2

    .end local v1    # "friendlyName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .restart local v1    # "friendlyName":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getFriendlyShortcutName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 175
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->getFriendlyActivityName(Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "activityName":Ljava/lang/String;
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mListener:Lcom/android/internal/util/cm/LockscreenShortcutsHelper$OnChangeListener;

    .line 73
    return-void
.end method

.method public getDrawableFromSystemUI(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 141
    iget-object v4, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.systemui"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 142
    iget-object v4, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 154
    .local v2, "res":Landroid/content/res/Resources;
    :goto_0
    if-nez v2, :cond_3

    .line 158
    :cond_0
    :goto_1
    return-object v3

    .line 144
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mSystemUiResources:Landroid/content/res/Resources;

    if-nez v4, :cond_2

    .line 146
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 147
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "com.android.systemui"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mSystemUiResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mSystemUiResources:Landroid/content/res/Resources;

    .restart local v2    # "res":Landroid/content/res/Resources;
    goto :goto_0

    .line 157
    :cond_3
    const-string v4, "drawable"

    const-string v5, "com.android.systemui"

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 158
    .local v0, "id":I
    if-lez v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    .line 148
    .end local v0    # "id":I
    .end local v2    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public getDrawablesForTargets()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/cm/LockscreenShortcutsHelper$TargetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->fetchTargets()V

    .line 99
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v10, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/cm/LockscreenShortcutsHelper$TargetInfo;>;"
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 102
    .local v1, "cm":Landroid/graphics/ColorMatrix;
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 103
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 105
    .local v5, "filter":Landroid/graphics/ColorMatrixColorFilter;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-static {}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;->values()[Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;

    move-result-object v11

    array-length v11, v11

    if-ge v6, v11, :cond_3

    .line 106
    iget-object v11, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    .local v0, "activity":Ljava/lang/String;
    const/4 v2, 0x0

    .line 108
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 110
    .local v4, "filerToSet":Landroid/graphics/ColorFilter;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "none"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 113
    const/4 v11, 0x0

    :try_start_0
    invoke-static {v0, v11}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 114
    .local v8, "intent":Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 115
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/4 v11, 0x1

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 118
    .local v7, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v7, :cond_0

    .line 119
    invoke-virtual {v7, v9}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 120
    move-object v4, v5

    .line 128
    .end local v7    # "info":Landroid/content/pm/ActivityInfo;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    if-nez v2, :cond_1

    .line 129
    sget-object v11, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;->LEFT_SHORTCUT:Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;

    # getter for: Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;->index:I
    invoke-static {v11}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;->access$200(Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;)I

    move-result v11

    if-ne v6, v11, :cond_2

    const-string v11, "ic_phone_24dp"

    :goto_2
    invoke-virtual {p0, v11}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->getDrawableFromSystemUI(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 131
    const/4 v4, 0x0

    .line 134
    :cond_1
    new-instance v11, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$TargetInfo;

    invoke-direct {v11, v2, v4, v0}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$TargetInfo;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 122
    :catch_0
    move-exception v3

    .line 123
    .local v3, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v3}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    .line 129
    .end local v3    # "e":Ljava/net/URISyntaxException;
    :cond_2
    const-string v11, "ic_camera_alt_24dp"

    goto :goto_2

    .line 136
    .end local v0    # "activity":Ljava/lang/String;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "filerToSet":Landroid/graphics/ColorFilter;
    :cond_3
    return-object v10
.end method

.method public getFriendlyNameForUri(Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;)Ljava/lang/String;
    .locals 3
    .param p1, "shortcut"    # Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->getIntent(Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;)Landroid/content/Intent;

    move-result-object v0

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->getFriendlyActivityName(Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v1

    .line 189
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->getFriendlyShortcutName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getIntent(Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;)Landroid/content/Intent;
    .locals 4
    .param p1, "shortcut"    # Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;

    .prologue
    .line 211
    const/4 v1, 0x0

    .line 213
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    # getter for: Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;->index:I
    invoke-static {p1}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;->access$200(Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 217
    :goto_0
    return-object v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public isTargetCustom(Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;)Z
    .locals 4
    .param p1, "shortcut"    # Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v2, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v1

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    # getter for: Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;->index:I
    invoke-static {p1}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;->access$200(Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    .local v0, "action":Ljava/lang/String;
    const-string v2, "default"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->getIntent(Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isTargetEmpty(Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;)Z
    .locals 2
    .param p1, "shortcut"    # Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    # getter for: Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;->index:I
    invoke-static {p1}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;->access$200(Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeTargetsForPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 231
    iget-object v2, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    .local v1, "target":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    const-string v3, "default"

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    .end local v1    # "target":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->saveTargets(Ljava/util/List;)V

    goto :goto_0
.end method

.method public saveTargets(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_target_actions"

    const-string v2, "|"

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putListAsDelimitedString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 223
    return-void
.end method
