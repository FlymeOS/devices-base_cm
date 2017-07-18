.class public Landroid/view/WindowManagerPolicyControl;
.super Ljava/lang/Object;
.source "WindowManagerPolicyControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerPolicyControl$ImmersiveDefaultStyles;,
        Landroid/view/WindowManagerPolicyControl$Filter;
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
    const-string/jumbo v0, "PolicyControl"

    sput-object v0, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/WindowManagerPolicyControl;->DEBUG:Z

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToNavigationWhiteList(Ljava/lang/String;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 246
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Landroid/view/WindowManagerPolicyControl$Filter;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManagerPolicyControl$Filter;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/view/WindowManagerPolicyControl$Filter;)V

    sput-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    .line 250
    :cond_0
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl$Filter;->-get1(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl$Filter;->-get1(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_1
    return-void
.end method

.method public static addToStatusWhiteList(Ljava/lang/String;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 236
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Landroid/view/WindowManagerPolicyControl$Filter;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManagerPolicyControl$Filter;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/view/WindowManagerPolicyControl$Filter;)V

    sput-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    .line 240
    :cond_0
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl$Filter;->-get1(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl$Filter;->-get1(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 235
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
    :cond_1
    const/4 v0, 0x0

    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    goto :goto_0
.end method

.method public static disableImmersiveConfirmation(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 177
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 177
    if-nez v0, :cond_1

    .line 179
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    .line 177
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static dump(Ljava/lang/String;Landroid/view/WindowManagerPolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "filter"    # Landroid/view/WindowManagerPolicyControl$Filter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 324
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "PolicyControl."

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 325
    if-nez p1, :cond_0

    .line 326
    const-string/jumbo v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    :goto_0
    return-void

    .line 328
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
    .line 318
    const-string/jumbo v0, "sImmersiveStatusFilter"

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Landroid/view/WindowManagerPolicyControl;->dump(Ljava/lang/String;Landroid/view/WindowManagerPolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 319
    const-string/jumbo v0, "sImmersiveNavigationFilter"

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Landroid/view/WindowManagerPolicyControl;->dump(Ljava/lang/String;Landroid/view/WindowManagerPolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 320
    const-string/jumbo v0, "sImmersivePreconfirmationsFilter"

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Landroid/view/WindowManagerPolicyControl;->dump(Ljava/lang/String;Landroid/view/WindowManagerPolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 317
    return-void
.end method

.method public static getPrivateWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 5
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/high16 v4, 0x2000000

    const/high16 v3, 0x1000000

    const/high16 v2, 0x800000

    .line 120
    if-eqz p1, :cond_5

    .line 121
    :goto_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 123
    .local v0, "privateFlags":I
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v1, :cond_1

    .line 124
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v1}, Landroid/view/WindowManagerPolicyControl$Filter;->isEnabledForAll()Z

    move-result v1

    .line 123
    if-eqz v1, :cond_1

    .line 125
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v1}, Landroid/view/WindowManagerPolicyControl$Filter;->isEnabledForAll()Z

    move-result v1

    .line 123
    if-eqz v1, :cond_1

    .line 127
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_0

    .line 128
    or-int/2addr v0, v4

    .line 131
    :cond_0
    sget v1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    packed-switch v1, :pswitch_data_0

    .line 145
    :cond_1
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v1, :cond_3

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v1, p1}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_2

    .line 147
    or-int/2addr v0, v4

    .line 149
    :cond_2
    or-int/2addr v0, v2

    .line 152
    :cond_3
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v1, :cond_4

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v1, p1}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 153
    or-int/2addr v0, v3

    .line 156
    :cond_4
    return v0

    .line 120
    .end local v0    # "privateFlags":I
    :cond_5
    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    goto :goto_0

    .line 133
    .restart local v0    # "privateFlags":I
    :pswitch_0
    or-int/2addr v0, v3

    .line 134
    or-int/2addr v0, v2

    .line 135
    return v0

    .line 137
    :pswitch_1
    or-int/2addr v0, v2

    .line 138
    return v0

    .line 140
    :pswitch_2
    or-int/2addr v0, v3

    .line 141
    return v0

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

    .line 80
    sget v1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    if-eqz v1, :cond_0

    .line 81
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

    .line 89
    sget v1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    if-eqz v1, :cond_2

    .line 90
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

    .restart local v0    # "vis":I
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
    .line 265
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 267
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v1, :cond_0

    .line 268
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl$Filter;->-get1(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 270
    :cond_0
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v1, :cond_1

    .line 271
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eq v1, v2, :cond_1

    .line 272
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl$Filter;->-get1(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 275
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

    .line 105
    sget v1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    if-eqz v1, :cond_0

    .line 106
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

    .line 112
    sget v1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    if-eqz v1, :cond_2

    .line 113
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

    .line 165
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 164
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

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImmersiveFiltersActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 314
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-nez v1, :cond_0

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v1, :cond_1

    :cond_0
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
    const-string/jumbo v0, "policy_control_style"

    invoke-static {p0, v0}, Landroid/view/WindowManagerPolicyControl;->reloadStyleFromSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    const-string/jumbo v0, "policy_control"

    invoke-static {p0, v0}, Landroid/view/WindowManagerPolicyControl;->reloadFromSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
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

    const-string/jumbo v3, "reloadFromSetting()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    const/4 v1, 0x0

    .line 191
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 193
    const/4 v3, -0x2

    .line 191
    invoke-static {v2, p1, v3}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "value":Ljava/lang/String;
    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sSettingValue:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sSettingValue:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 195
    :cond_1
    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl;->setFilters(Ljava/lang/String;)V

    .line 196
    sput-object v1, Landroid/view/WindowManagerPolicyControl;->sSettingValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v2, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error loading policy control, value="

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

    .line 204
    const/4 v1, 0x0

    .line 203
    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    .line 205
    sget-boolean v0, Landroid/view/WindowManagerPolicyControl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reloadStyleFromSetting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    return-void
.end method

.method public static removeFromWhiteLists(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 256
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v0, :cond_0

    .line 257
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl$Filter;->-get1(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 259
    :cond_0
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v0, :cond_1

    .line 260
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl$Filter;->-get1(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 255
    :cond_1
    return-void
.end method

.method public static saveStyleToSettings(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 231
    const-string/jumbo v1, "policy_control_style"

    .line 230
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    sput p1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    .line 229
    return-void
.end method

.method public static saveToSettings(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    const-string/jumbo v0, "policy_control"

    invoke-static {p0, v0}, Landroid/view/WindowManagerPolicyControl;->saveToSettings(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
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
    const-string/jumbo v2, "immersive.status"

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
    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_1
    const-string/jumbo v2, "immersive.navigation"

    sget-object v3, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v2, v3, v1}, Landroid/view/WindowManagerPolicyControl;->writeFilter(Ljava/lang/String;Landroid/view/WindowManagerPolicyControl$Filter;Ljava/lang/StringBuilder;)V

    .line 226
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 212
    return-void
.end method

.method private static setFilters(Ljava/lang/String;)V
    .locals 11
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 333
    sget-boolean v6, Landroid/view/WindowManagerPolicyControl;->DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setFilters: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    sput-object v10, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    .line 335
    sput-object v10, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    .line 336
    sput-object v10, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    .line 337
    if-eqz p0, :cond_6

    .line 338
    const-string/jumbo v6, ":"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, "nvps":[Ljava/lang/String;
    array-length v8, v4

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_6

    aget-object v3, v4, v6

    .line 340
    .local v3, "nvp":Ljava/lang/String;
    const/16 v9, 0x3d

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 341
    .local v1, "i":I
    const/4 v9, -0x1

    if-ne v1, v9, :cond_2

    .line 339
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 342
    :cond_2
    invoke-virtual {v3, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "n":Ljava/lang/String;
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 344
    .local v5, "v":Ljava/lang/String;
    const-string/jumbo v9, "immersive.full"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 345
    invoke-static {v5}, Landroid/view/WindowManagerPolicyControl$Filter;->parse(Ljava/lang/String;)Landroid/view/WindowManagerPolicyControl$Filter;

    move-result-object v0

    .line 346
    .local v0, "f":Landroid/view/WindowManagerPolicyControl$Filter;
    sput-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    sput-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    .line 347
    sget-object v9, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-nez v9, :cond_1

    .line 348
    sput-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    goto :goto_1

    .line 350
    .end local v0    # "f":Landroid/view/WindowManagerPolicyControl$Filter;
    :cond_3
    const-string/jumbo v9, "immersive.status"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 351
    invoke-static {v5}, Landroid/view/WindowManagerPolicyControl$Filter;->parse(Ljava/lang/String;)Landroid/view/WindowManagerPolicyControl$Filter;

    move-result-object v0

    .line 352
    .restart local v0    # "f":Landroid/view/WindowManagerPolicyControl$Filter;
    sput-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    goto :goto_1

    .line 353
    .end local v0    # "f":Landroid/view/WindowManagerPolicyControl$Filter;
    :cond_4
    const-string/jumbo v9, "immersive.navigation"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 354
    invoke-static {v5}, Landroid/view/WindowManagerPolicyControl$Filter;->parse(Ljava/lang/String;)Landroid/view/WindowManagerPolicyControl$Filter;

    move-result-object v0

    .line 355
    .restart local v0    # "f":Landroid/view/WindowManagerPolicyControl$Filter;
    sput-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    .line 356
    sget-object v9, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-nez v9, :cond_1

    .line 357
    sput-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    goto :goto_1

    .line 359
    .end local v0    # "f":Landroid/view/WindowManagerPolicyControl$Filter;
    :cond_5
    const-string/jumbo v9, "immersive.preconfirms"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 360
    invoke-static {v5}, Landroid/view/WindowManagerPolicyControl$Filter;->parse(Ljava/lang/String;)Landroid/view/WindowManagerPolicyControl$Filter;

    move-result-object v0

    .line 361
    .restart local v0    # "f":Landroid/view/WindowManagerPolicyControl$Filter;
    sput-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    goto :goto_1

    .line 365
    .end local v0    # "f":Landroid/view/WindowManagerPolicyControl$Filter;
    .end local v1    # "i":I
    .end local v2    # "n":Ljava/lang/String;
    .end local v3    # "nvp":Ljava/lang/String;
    .end local v4    # "nvps":[Ljava/lang/String;
    .end local v5    # "v":Ljava/lang/String;
    :cond_6
    sget-boolean v6, Landroid/view/WindowManagerPolicyControl;->DEBUG:Z

    if-eqz v6, :cond_7

    .line 366
    sget-object v6, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "immersiveStatusFilter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sget-object v6, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "immersiveNavigationFilter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    sget-object v6, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "immersivePreconfirmationsFilter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_7
    return-void
.end method

.method private static writeFilter(Ljava/lang/String;Landroid/view/WindowManagerPolicyControl$Filter;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "filter"    # Landroid/view/WindowManagerPolicyControl$Filter;
    .param p2, "stringBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 279
    invoke-static {p1}, Landroid/view/WindowManagerPolicyControl$Filter;->-get1(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/WindowManagerPolicyControl$Filter;->-get0(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    return-void

    .line 282
    :cond_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string/jumbo v1, "="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "needComma":Z
    invoke-static {p1}, Landroid/view/WindowManagerPolicyControl$Filter;->-get1(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 287
    invoke-static {p1}, Landroid/view/WindowManagerPolicyControl$Filter;->-get1(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Landroid/view/WindowManagerPolicyControl;->writePackages(Landroid/util/ArraySet;Ljava/lang/StringBuilder;Z)V

    .line 288
    const/4 v0, 0x1

    .line 290
    :cond_1
    invoke-static {p1}, Landroid/view/WindowManagerPolicyControl$Filter;->-get0(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 291
    if-eqz v0, :cond_2

    .line 292
    const-string/jumbo v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_2
    invoke-static {p1}, Landroid/view/WindowManagerPolicyControl$Filter;->-get0(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p2, v2}, Landroid/view/WindowManagerPolicyControl;->writePackages(Landroid/util/ArraySet;Ljava/lang/StringBuilder;Z)V

    .line 278
    :cond_3
    return-void
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
    .line 300
    .local p0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 301
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 302
    if-eqz p2, :cond_1

    .line 303
    const-string/jumbo v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 306
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    const-string/jumbo v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 299
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method
