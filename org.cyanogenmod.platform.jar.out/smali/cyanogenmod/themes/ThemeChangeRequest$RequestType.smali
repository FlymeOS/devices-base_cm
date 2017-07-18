.class public final enum Lcyanogenmod/themes/ThemeChangeRequest$RequestType;
.super Ljava/lang/Enum;
.source "ThemeChangeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/themes/ThemeChangeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcyanogenmod/themes/ThemeChangeRequest$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

.field public static final enum THEME_REMOVED:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

.field public static final enum THEME_RESET:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

.field public static final enum THEME_UPDATED:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

.field public static final enum USER_REQUEST:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

.field public static final enum USER_REQUEST_MIXNMATCH:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    new-instance v0, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    const-string/jumbo v1, "USER_REQUEST"

    invoke-direct {v0, v1, v2}, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->USER_REQUEST:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    .line 191
    new-instance v0, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    const-string/jumbo v1, "USER_REQUEST_MIXNMATCH"

    invoke-direct {v0, v1, v3}, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->USER_REQUEST_MIXNMATCH:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    .line 192
    new-instance v0, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    const-string/jumbo v1, "THEME_UPDATED"

    invoke-direct {v0, v1, v4}, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->THEME_UPDATED:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    .line 193
    new-instance v0, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    const-string/jumbo v1, "THEME_REMOVED"

    invoke-direct {v0, v1, v5}, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->THEME_REMOVED:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    .line 194
    new-instance v0, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    const-string/jumbo v1, "THEME_RESET"

    invoke-direct {v0, v1, v6}, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->THEME_RESET:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    .line 189
    const/4 v0, 0x5

    new-array v0, v0, [Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    sget-object v1, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->USER_REQUEST:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->USER_REQUEST_MIXNMATCH:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->THEME_UPDATED:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->THEME_REMOVED:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    aput-object v1, v0, v5

    sget-object v1, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->THEME_RESET:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    aput-object v1, v0, v6

    sput-object v0, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->$VALUES:[Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$RequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 189
    const-class v0, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    return-object v0
.end method

.method public static values()[Lcyanogenmod/themes/ThemeChangeRequest$RequestType;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->$VALUES:[Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    return-object v0
.end method
