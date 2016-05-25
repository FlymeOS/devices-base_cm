.class public final enum Landroid/content/res/ThemeChangeRequest$RequestType;
.super Ljava/lang/Enum;
.source "ThemeChangeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ThemeChangeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/content/res/ThemeChangeRequest$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/content/res/ThemeChangeRequest$RequestType;

.field public static final enum THEME_REMOVED:Landroid/content/res/ThemeChangeRequest$RequestType;

.field public static final enum THEME_RESET:Landroid/content/res/ThemeChangeRequest$RequestType;

.field public static final enum THEME_UPDATED:Landroid/content/res/ThemeChangeRequest$RequestType;

.field public static final enum USER_REQUEST:Landroid/content/res/ThemeChangeRequest$RequestType;

.field public static final enum USER_REQUEST_MIXNMATCH:Landroid/content/res/ThemeChangeRequest$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    new-instance v0, Landroid/content/res/ThemeChangeRequest$RequestType;

    const-string v1, "USER_REQUEST"

    invoke-direct {v0, v1, v2}, Landroid/content/res/ThemeChangeRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/res/ThemeChangeRequest$RequestType;->USER_REQUEST:Landroid/content/res/ThemeChangeRequest$RequestType;

    .line 172
    new-instance v0, Landroid/content/res/ThemeChangeRequest$RequestType;

    const-string v1, "USER_REQUEST_MIXNMATCH"

    invoke-direct {v0, v1, v3}, Landroid/content/res/ThemeChangeRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/res/ThemeChangeRequest$RequestType;->USER_REQUEST_MIXNMATCH:Landroid/content/res/ThemeChangeRequest$RequestType;

    .line 173
    new-instance v0, Landroid/content/res/ThemeChangeRequest$RequestType;

    const-string v1, "THEME_UPDATED"

    invoke-direct {v0, v1, v4}, Landroid/content/res/ThemeChangeRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/res/ThemeChangeRequest$RequestType;->THEME_UPDATED:Landroid/content/res/ThemeChangeRequest$RequestType;

    .line 174
    new-instance v0, Landroid/content/res/ThemeChangeRequest$RequestType;

    const-string v1, "THEME_REMOVED"

    invoke-direct {v0, v1, v5}, Landroid/content/res/ThemeChangeRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/res/ThemeChangeRequest$RequestType;->THEME_REMOVED:Landroid/content/res/ThemeChangeRequest$RequestType;

    .line 175
    new-instance v0, Landroid/content/res/ThemeChangeRequest$RequestType;

    const-string v1, "THEME_RESET"

    invoke-direct {v0, v1, v6}, Landroid/content/res/ThemeChangeRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/res/ThemeChangeRequest$RequestType;->THEME_RESET:Landroid/content/res/ThemeChangeRequest$RequestType;

    .line 170
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/content/res/ThemeChangeRequest$RequestType;

    sget-object v1, Landroid/content/res/ThemeChangeRequest$RequestType;->USER_REQUEST:Landroid/content/res/ThemeChangeRequest$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/content/res/ThemeChangeRequest$RequestType;->USER_REQUEST_MIXNMATCH:Landroid/content/res/ThemeChangeRequest$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/content/res/ThemeChangeRequest$RequestType;->THEME_UPDATED:Landroid/content/res/ThemeChangeRequest$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/content/res/ThemeChangeRequest$RequestType;->THEME_REMOVED:Landroid/content/res/ThemeChangeRequest$RequestType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/content/res/ThemeChangeRequest$RequestType;->THEME_RESET:Landroid/content/res/ThemeChangeRequest$RequestType;

    aput-object v1, v0, v6

    sput-object v0, Landroid/content/res/ThemeChangeRequest$RequestType;->$VALUES:[Landroid/content/res/ThemeChangeRequest$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$RequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 170
    const-class v0, Landroid/content/res/ThemeChangeRequest$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/content/res/ThemeChangeRequest$RequestType;

    return-object v0
.end method

.method public static values()[Landroid/content/res/ThemeChangeRequest$RequestType;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Landroid/content/res/ThemeChangeRequest$RequestType;->$VALUES:[Landroid/content/res/ThemeChangeRequest$RequestType;

    invoke-virtual {v0}, [Landroid/content/res/ThemeChangeRequest$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/res/ThemeChangeRequest$RequestType;

    return-object v0
.end method
