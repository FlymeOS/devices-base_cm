.class final enum Lcom/android/internal/app/MzResolverActivity$ActionTitle;
.super Ljava/lang/Enum;
.source "MzResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MzResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActionTitle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/app/MzResolverActivity$ActionTitle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/app/MzResolverActivity$ActionTitle;

.field public static final enum DEFAULT:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

.field public static final enum EDIT:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

.field public static final enum HOME:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

.field public static final enum SEND:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

.field public static final enum SENDTO:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

.field public static final enum SEND_MULTIPLE:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

.field public static final enum VIEW:Lcom/android/internal/app/MzResolverActivity$ActionTitle;


# instance fields
.field public final action:Ljava/lang/String;

.field public final namedTitleRes:I

.field public final titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x2

    .line 152
    new-instance v0, Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    const-string v1, "VIEW"

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "whichViewApplication"

    invoke-static {v9, v4}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v4

    const-string v5, "whichViewApplicationNamed"

    invoke-static {v9, v5}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/MzResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->VIEW:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    .line 155
    new-instance v3, Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    const-string v4, "EDIT"

    const-string v6, "android.intent.action.EDIT"

    const-string v0, "whichEditApplication"

    invoke-static {v9, v0}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v7

    const-string v0, "whichEditApplicationNamed"

    invoke-static {v9, v0}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v8

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/MzResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->EDIT:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    .line 158
    new-instance v3, Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    const-string v4, "SEND"

    const-string v6, "android.intent.action.SEND"

    const-string v0, "whichSendApplication"

    invoke-static {v9, v0}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v7

    const-string v0, "whichSendApplicationNamed"

    invoke-static {v9, v0}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v8

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/MzResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->SEND:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    .line 161
    new-instance v3, Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    const-string v4, "SENDTO"

    const-string v6, "android.intent.action.SENDTO"

    const-string v0, "whichSendApplication"

    invoke-static {v9, v0}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v7

    const-string v0, "whichSendApplicationNamed"

    invoke-static {v9, v0}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v8

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/MzResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->SENDTO:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    .line 164
    new-instance v3, Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    const-string v4, "SEND_MULTIPLE"

    const-string v6, "android.intent.action.SEND_MULTIPLE"

    const-string v0, "whichSendApplication"

    invoke-static {v9, v0}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v7

    const-string v0, "whichSendApplicationNamed"

    invoke-static {v9, v0}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v8

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/MzResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->SEND_MULTIPLE:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    .line 167
    new-instance v3, Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    const-string v4, "DEFAULT"

    const/4 v5, 0x5

    const/4 v6, 0x0

    const-string v0, "whichApplication"

    invoke-static {v9, v0}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v7

    const-string v0, "whichApplicationNamed"

    invoke-static {v9, v0}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v8

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/MzResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    .line 170
    new-instance v3, Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    const-string v4, "HOME"

    const/4 v5, 0x6

    const-string v6, "android.intent.action.MAIN"

    const-string v0, "whichHomeApplication"

    invoke-static {v9, v0}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v7

    const-string v0, "whichHomeApplicationNamed"

    invoke-static {v9, v0}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v8

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/MzResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    .line 151
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    sget-object v1, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->VIEW:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->EDIT:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->SEND:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->SENDTO:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->SEND_MULTIPLE:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "titleRes"    # I
    .param p5, "namedTitleRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 179
    iput-object p3, p0, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->action:Ljava/lang/String;

    .line 180
    iput p4, p0, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->titleRes:I

    .line 181
    iput p5, p0, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->namedTitleRes:I

    .line 182
    return-void
.end method

.method public static forAction(Ljava/lang/String;)Lcom/android/internal/app/MzResolverActivity$ActionTitle;
    .locals 5
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {}, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->values()[Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/app/MzResolverActivity$ActionTitle;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 186
    .local v3, "title":Lcom/android/internal/app/MzResolverActivity$ActionTitle;
    sget-object v4, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    if-eq v3, v4, :cond_0

    if-eqz p0, :cond_0

    iget-object v4, v3, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->action:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    .end local v3    # "title":Lcom/android/internal/app/MzResolverActivity$ActionTitle;
    :goto_1
    return-object v3

    .line 185
    .restart local v3    # "title":Lcom/android/internal/app/MzResolverActivity$ActionTitle;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v3    # "title":Lcom/android/internal/app/MzResolverActivity$ActionTitle;
    :cond_1
    sget-object v3, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/app/MzResolverActivity$ActionTitle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 151
    const-class v0, Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/app/MzResolverActivity$ActionTitle;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    invoke-virtual {v0}, [Lcom/android/internal/app/MzResolverActivity$ActionTitle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    return-object v0
.end method
