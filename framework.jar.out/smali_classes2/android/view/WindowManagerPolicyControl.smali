.class public Landroid/view/WindowManagerPolicyControl;
.super Ljava/lang/Object;
.source "WindowManagerPolicyControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerPolicyControl$1;,
        Landroid/view/WindowManagerPolicyControl$Filter;,
        Landroid/view/WindowManagerPolicyControl$ImmersiveDefaultStyles;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final NAME_IMMERSIVE_FULL:Ljava/lang/String; = "immersive.full"

.field private static final NAME_IMMERSIVE_NAVIGATION:Ljava/lang/String; = "immersive.navigation"

.field private static final NAME_IMMERSIVE_PRECONFIRMATIONS:Ljava/lang/String; = "immersive.preconfirms"

.field private static final NAME_IMMERSIVE_STATUS:Ljava/lang/String; = "immersive.status"

.field private static TAG:Ljava/lang/String;

.field private static sDefaultImmersiveStyle:I

.field private static sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

.field private static sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

.field private static sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

.field private static sSettingValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "PolicyControl"

    sput-object v0, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/WindowManagerPolicyControl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    return-void
.end method

.method public static addToNavigationWhiteList(Ljava/lang/String;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 264
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Landroid/view/WindowManagerPolicyControl$Filter;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManagerPolicyControl$Filter;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/view/WindowManagerPolicyControl$1;)V

    sput-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    .line 268
    :cond_0
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_1
    return-void
.end method

.method public static addToPreconfirmWhiteList(Ljava/lang/String;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 243
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Landroid/view/WindowManagerPolicyControl$Filter;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManagerPolicyControl$Filter;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/view/WindowManagerPolicyControl$1;)V

    sput-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    .line 248
    :cond_0
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_1
    return-void
.end method

.method public static addToStatusWhiteList(Ljava/lang/String;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 254
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Landroid/view/WindowManagerPolicyControl$Filter;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManagerPolicyControl$Filter;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/view/WindowManagerPolicyControl$1;)V

    sput-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    .line 258
    :cond_0
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_1
    return-void
.end method

.method public static adjustClearableFlags(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 2
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "clearableFlags"    # I

    .prologue
    .line 169
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 170
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v1, v0}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    and-int/lit8 p1, p1, -0x5

    .line 173
    :cond_0
    return p1

    .line 169
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static disableImmersiveConfirmation(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 177
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static dump(Ljava/lang/String;Landroid/view/WindowManagerPolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "filter"    # Landroid/view/WindowManagerPolicyControl$Filter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 342
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "PolicyControl."

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 343
    if-nez p1, :cond_0

    .line 344
    const-string v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/WindowManagerPolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 336
    const-string v0, "sImmersiveStatusFilter"

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Landroid/view/WindowManagerPolicyControl;->dump(Ljava/lang/String;Landroid/view/WindowManagerPolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 337
    const-string v0, "sImmersiveNavigationFilter"

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Landroid/view/WindowManagerPolicyControl;->dump(Ljava/lang/String;Landroid/view/WindowManagerPolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 338
    const-string v0, "sImmersivePreconfirmationsFilter"

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Landroid/view/WindowManagerPolicyControl;->dump(Ljava/lang/String;Landroid/view/WindowManagerPolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 339
    return-void
.end method

.method public static getPrivateWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 120
    if-eqz p1, :cond_5

    .line 121
    :goto_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 123
    .local v0, "privateFlags":I
    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v2}, Landroid/view/WindowManagerPolicyControl$Filter;->isEnabledForAll()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v2}, Landroid/view/WindowManagerPolicyControl$Filter;->isEnabledForAll()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_0

    .line 128
    or-int/lit16 v0, v0, 0x2000

    .line 131
    :cond_0
    sget v2, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    packed-switch v2, :pswitch_data_0

    .line 145
    :cond_1
    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v2, :cond_3

    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v2, p1}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_2

    .line 147
    or-int/lit16 v0, v0, 0x2000

    .line 149
    :cond_2
    or-int/lit16 v0, v0, 0x800

    .line 152
    :cond_3
    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v2, :cond_4

    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v2, p1}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 153
    or-int/lit16 v0, v0, 0x1000

    :cond_4
    move v1, v0

    .line 156
    .end local v0    # "privateFlags":I
    .local v1, "privateFlags":I
    :goto_1
    return v1

    .line 120
    .end local v1    # "privateFlags":I
    :cond_5
    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    goto :goto_0

    .line 133
    .restart local v0    # "privateFlags":I
    :pswitch_0
    or-int/lit16 v0, v0, 0x1000

    .line 134
    or-int/lit16 v0, v0, 0x800

    move v1, v0

    .line 135
    .end local v0    # "privateFlags":I
    .restart local v1    # "privateFlags":I
    goto :goto_1

    .line 137
    .end local v1    # "privateFlags":I
    .restart local v0    # "privateFlags":I
    :pswitch_1
    or-int/lit16 v0, v0, 0x800

    move v1, v0

    .line 138
    .end local v0    # "privateFlags":I
    .restart local v1    # "privateFlags":I
    goto :goto_1

    .line 140
    .end local v1    # "privateFlags":I
    .restart local v0    # "privateFlags":I
    :pswitch_2
    or-int/lit16 v0, v0, 0x1000

    move v1, v0

    .line 141
    .end local v0    # "privateFlags":I
    .restart local v1    # "privateFlags":I
    goto :goto_1

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 77
    if-eqz p1, :cond_4

    .line 78
    :goto_0
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v0

    .line 79
    .local v0, "vis":I
    :goto_1
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v1, p1}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    if-eqz v1, :cond_0

    sget v1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 82
    :cond_0
    or-int/lit16 v0, v0, 0x1404

    .line 85
    const v1, -0x40000101    # -1.9999694f

    and-int/2addr v0, v1

    .line 88
    :cond_1
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v1, :cond_3

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v1, p1}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    if-eqz v1, :cond_2

    sget v1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 91
    :cond_2
    or-int/lit16 v0, v0, 0x1202

    .line 94
    const v1, 0x7ffffeff

    and-int/2addr v0, v1

    .line 97
    :cond_3
    return v0

    .line 77
    .end local v0    # "vis":I
    :cond_4
    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    goto :goto_0

    .line 78
    :cond_5
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    goto :goto_1
.end method

.method public static getWhiteLists()Landroid/util/ArraySet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 285
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v1, :cond_0

    .line 286
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 288
    :cond_0
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eq v1, v2, :cond_1

    .line 290
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 293
    :cond_1
    return-object v0
.end method

.method public static getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 101
    if-eqz p1, :cond_4

    .line 102
    :goto_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 104
    .local v0, "flags":I
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v1, p1}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    if-eqz v1, :cond_0

    sget v1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 107
    :cond_0
    or-int/lit16 v0, v0, 0x400

    .line 108
    const v1, -0x4000801

    and-int/2addr v0, v1

    .line 111
    :cond_1
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v1, :cond_3

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v1, p1}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    if-eqz v1, :cond_2

    sget v1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 114
    :cond_2
    const v1, -0x8000001

    and-int/2addr v0, v1

    .line 116
    :cond_3
    return v0

    .line 101
    .end local v0    # "flags":I
    :cond_4
    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    goto :goto_0
.end method

.method public static immersiveNavigationFilterMatches(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 164
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static immersiveStatusFilterMatches(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImmersiveFiltersActive()Z
    .locals 1

    .prologue
    .line 332
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-nez v0, :cond_0

    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reloadFromSetting(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    const-string v0, "policy_control_style"

    invoke-static {p0, v0}, Landroid/view/WindowManagerPolicyControl;->reloadStyleFromSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    const-string v0, "policy_control"

    invoke-static {p0, v0}, Landroid/view/WindowManagerPolicyControl;->reloadFromSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public static reloadFromSetting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 188
    sget-boolean v2, Landroid/view/WindowManagerPolicyControl;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    const-string v3, "reloadFromSetting()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    const/4 v1, 0x0

    .line 191
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v2, p1, v3}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 194
    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sSettingValue:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sSettingValue:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl;->setFilters(Ljava/lang/String;)V

    .line 196
    sput-object v1, Landroid/view/WindowManagerPolicyControl;->sSettingValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v2, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading policy control, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static reloadStyleFromSetting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    .line 205
    sget-boolean v0, Landroid/view/WindowManagerPolicyControl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reloadStyleFromSetting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    return-void
.end method

.method public static removeFromWhiteLists(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 274
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v0, :cond_0

    .line 275
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 277
    :cond_0
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v0, :cond_1

    .line 278
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 280
    :cond_1
    return-void
.end method

.method public static saveStyleToSettings(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "policy_control_style"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 239
    sput p1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    .line 240
    return-void
.end method

.method public static saveToSettings(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    const-string v0, "policy_control"

    invoke-static {p0, v0}, Landroid/view/WindowManagerPolicyControl;->saveToSettings(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public static saveToSettings(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v1, "value":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 215
    .local v0, "needSemicolon":Z
    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v2, :cond_0

    .line 216
    const-string v2, "immersive.status"

    sget-object v3, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v2, v3, v1}, Landroid/view/WindowManagerPolicyControl;->writeFilter(Ljava/lang/String;Landroid/view/WindowManagerPolicyControl$Filter;Ljava/lang/StringBuilder;)V

    .line 217
    const/4 v0, 0x1

    .line 219
    :cond_0
    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v2, :cond_2

    .line 220
    if-eqz v0, :cond_1

    .line 221
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_1
    const-string v2, "immersive.navigation"

    sget-object v3, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v2, v3, v1}, Landroid/view/WindowManagerPolicyControl;->writeFilter(Ljava/lang/String;Landroid/view/WindowManagerPolicyControl$Filter;Ljava/lang/StringBuilder;)V

    .line 224
    const/4 v0, 0x1

    .line 226
    :cond_2
    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v2, :cond_4

    .line 227
    if-eqz v0, :cond_3

    .line 228
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_3
    const-string v2, "immersive.preconfirms"

    sget-object v3, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v2, v3, v1}, Landroid/view/WindowManagerPolicyControl;->writeFilter(Ljava/lang/String;Landroid/view/WindowManagerPolicyControl$Filter;Ljava/lang/StringBuilder;)V

    .line 233
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 234
    return-void
.end method

.method private static setFilters(Ljava/lang/String;)V
    .locals 13
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 351
    sget-boolean v9, Landroid/view/WindowManagerPolicyControl;->DEBUG:Z

    if-eqz v9, :cond_0

    sget-object v9, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setFilters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    sput-object v12, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    .line 353
    sput-object v12, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    .line 354
    sput-object v12, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    .line 355
    if-eqz p0, :cond_6

    .line 356
    const-string v9, ":"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 357
    .local v7, "nvps":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_6

    aget-object v6, v0, v3

    .line 358
    .local v6, "nvp":Ljava/lang/String;
    const/16 v9, 0x3d

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 359
    .local v2, "i":I
    const/4 v9, -0x1

    if-ne v2, v9, :cond_2

    .line 357
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 360
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 361
    .local v5, "n":Ljava/lang/String;
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 362
    .local v8, "v":Ljava/lang/String;
    const-string v9, "immersive.full"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 363
    invoke-static {v8}, Landroid/view/WindowManagerPolicyControl$Filter;->parse(Ljava/lang/String;)Landroid/view/WindowManagerPolicyControl$Filter;

    move-result-object v1

    .line 364
    .local v1, "f":Landroid/view/WindowManagerPolicyControl$Filter;
    sput-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    sput-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    .line 365
    sget-object v9, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-nez v9, :cond_1

    .line 366
    sput-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    goto :goto_1

    .line 368
    .end local v1    # "f":Landroid/view/WindowManagerPolicyControl$Filter;
    :cond_3
    const-string v9, "immersive.status"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 369
    invoke-static {v8}, Landroid/view/WindowManagerPolicyControl$Filter;->parse(Ljava/lang/String;)Landroid/view/WindowManagerPolicyControl$Filter;

    move-result-object v1

    .line 370
    .restart local v1    # "f":Landroid/view/WindowManagerPolicyControl$Filter;
    sput-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    goto :goto_1

    .line 371
    .end local v1    # "f":Landroid/view/WindowManagerPolicyControl$Filter;
    :cond_4
    const-string v9, "immersive.navigation"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 372
    invoke-static {v8}, Landroid/view/WindowManagerPolicyControl$Filter;->parse(Ljava/lang/String;)Landroid/view/WindowManagerPolicyControl$Filter;

    move-result-object v1

    .line 373
    .restart local v1    # "f":Landroid/view/WindowManagerPolicyControl$Filter;
    sput-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    .line 374
    sget-object v9, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-nez v9, :cond_1

    .line 375
    sput-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    goto :goto_1

    .line 377
    .end local v1    # "f":Landroid/view/WindowManagerPolicyControl$Filter;
    :cond_5
    const-string v9, "immersive.preconfirms"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 378
    invoke-static {v8}, Landroid/view/WindowManagerPolicyControl$Filter;->parse(Ljava/lang/String;)Landroid/view/WindowManagerPolicyControl$Filter;

    move-result-object v1

    .line 379
    .restart local v1    # "f":Landroid/view/WindowManagerPolicyControl$Filter;
    sput-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    goto :goto_1

    .line 383
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "f":Landroid/view/WindowManagerPolicyControl$Filter;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "n":Ljava/lang/String;
    .end local v6    # "nvp":Ljava/lang/String;
    .end local v7    # "nvps":[Ljava/lang/String;
    .end local v8    # "v":Ljava/lang/String;
    :cond_6
    sget-boolean v9, Landroid/view/WindowManagerPolicyControl;->DEBUG:Z

    if-eqz v9, :cond_7

    .line 384
    sget-object v9, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "immersiveStatusFilter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    sget-object v9, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "immersiveNavigationFilter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    sget-object v9, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "immersivePreconfirmationsFilter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_7
    return-void
.end method

.method private static writeFilter(Ljava/lang/String;Landroid/view/WindowManagerPolicyControl$Filter;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "filter"    # Landroid/view/WindowManagerPolicyControl$Filter;
    .param p2, "stringBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 297
    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {p1}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;
    invoke-static {p1}, Landroid/view/WindowManagerPolicyControl$Filter;->access$200(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v1, "="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, "needComma":Z
    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {p1}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 305
    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {p1}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Landroid/view/WindowManagerPolicyControl;->writePackages(Landroid/util/ArraySet;Ljava/lang/StringBuilder;Z)V

    .line 306
    const/4 v0, 0x1

    .line 308
    :cond_2
    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;
    invoke-static {p1}, Landroid/view/WindowManagerPolicyControl$Filter;->access$200(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    if-eqz v0, :cond_3

    .line 310
    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_3
    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;
    invoke-static {p1}, Landroid/view/WindowManagerPolicyControl$Filter;->access$200(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p2, v2}, Landroid/view/WindowManagerPolicyControl;->writePackages(Landroid/util/ArraySet;Ljava/lang/StringBuilder;Z)V

    goto :goto_0
.end method

.method private static writePackages(Landroid/util/ArraySet;Ljava/lang/StringBuilder;Z)V
    .locals 3
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p2, "isBlackList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 319
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 320
    if-eqz p2, :cond_1

    .line 321
    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 324
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 329
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method
