.class public final enum Landroid/renderscript/FileA3D$EntryType;
.super Ljava/lang/Enum;
.source "FileA3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/FileA3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/FileA3D$EntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/FileA3D$EntryType;

.field public static final enum MESH:Landroid/renderscript/FileA3D$EntryType;

.field public static final enum UNKNOWN:Landroid/renderscript/FileA3D$EntryType;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Landroid/renderscript/FileA3D$EntryType;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/FileA3D$EntryType;-><init>(Ljava/lang/String;II)V

    .line 51
    sput-object v0, Landroid/renderscript/FileA3D$EntryType;->UNKNOWN:Landroid/renderscript/FileA3D$EntryType;

    .line 52
    new-instance v0, Landroid/renderscript/FileA3D$EntryType;

    const-string/jumbo v1, "MESH"

    invoke-direct {v0, v1, v3, v3}, Landroid/renderscript/FileA3D$EntryType;-><init>(Ljava/lang/String;II)V

    .line 56
    sput-object v0, Landroid/renderscript/FileA3D$EntryType;->MESH:Landroid/renderscript/FileA3D$EntryType;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/renderscript/FileA3D$EntryType;

    sget-object v1, Landroid/renderscript/FileA3D$EntryType;->UNKNOWN:Landroid/renderscript/FileA3D$EntryType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/renderscript/FileA3D$EntryType;->MESH:Landroid/renderscript/FileA3D$EntryType;

    aput-object v1, v0, v3

    sput-object v0, Landroid/renderscript/FileA3D$EntryType;->$VALUES:[Landroid/renderscript/FileA3D$EntryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Landroid/renderscript/FileA3D$EntryType;->mID:I

    .line 59
    return-void
.end method

.method static toEntryType(I)Landroid/renderscript/FileA3D$EntryType;
    .locals 1
    .param p0, "intID"    # I

    .prologue
    .line 64
    invoke-static {}, Landroid/renderscript/FileA3D$EntryType;->values()[Landroid/renderscript/FileA3D$EntryType;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/FileA3D$EntryType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Landroid/renderscript/FileA3D$EntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/FileA3D$EntryType;

    return-object v0
.end method

.method public static values()[Landroid/renderscript/FileA3D$EntryType;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Landroid/renderscript/FileA3D$EntryType;->$VALUES:[Landroid/renderscript/FileA3D$EntryType;

    return-object v0
.end method
