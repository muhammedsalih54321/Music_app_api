
class Musicmodel {
    Tracks? tracks;
    Artists1? artists;

    Musicmodel({this.tracks, this.artists});

    Musicmodel.fromJson(Map<String, dynamic> json) {
        if(json["tracks"] is Map) {
            tracks = json["tracks"] == null ? null : Tracks.fromJson(json["tracks"]);
        }
        if(json["artists"] is Map) {
            artists = json["artists"] == null ? null : Artists1.fromJson(json["artists"]);
        }
    }

    static List<Musicmodel> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Musicmodel.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(tracks != null) {
            _data["tracks"] = tracks?.toJson();
        }
        if(artists != null) {
            _data["artists"] = artists?.toJson();
        }
        return _data;
    }

    Musicmodel copyWith({
        Tracks? tracks,
        Artists1? artists,
    }) => Musicmodel(
        tracks: tracks ?? this.tracks,
        artists: artists ?? this.artists,
    );
}

class Artists1 {
    List<Hits1>? hits;

    Artists1({this.hits});

    Artists1.fromJson(Map<String, dynamic> json) {
        if(json["hits"] is List) {
            hits = json["hits"] == null ? null : (json["hits"] as List).map((e) => Hits1.fromJson(e)).toList();
        }
    }

    static List<Artists1> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Artists1.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(hits != null) {
            _data["hits"] = hits?.map((e) => e.toJson()).toList();
        }
        return _data;
    }

    Artists1 copyWith({
        List<Hits1>? hits,
    }) => Artists1(
        hits: hits ?? this.hits,
    );
}

class Hits1 {
    Artist? artist;

    Hits1({this.artist});

    Hits1.fromJson(Map<String, dynamic> json) {
        if(json["artist"] is Map) {
            artist = json["artist"] == null ? null : Artist.fromJson(json["artist"]);
        }
    }

    static List<Hits1> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Hits1.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(artist != null) {
            _data["artist"] = artist?.toJson();
        }
        return _data;
    }

    Hits1 copyWith({
        Artist? artist,
    }) => Hits1(
        artist: artist ?? this.artist,
    );
}

class Artist {
    String? avatar;
    String? name;
    bool? verified;
    String? weburl;
    String? adamid;

    Artist({this.avatar, this.name, this.verified, this.weburl, this.adamid});

    Artist.fromJson(Map<String, dynamic> json) {
        if(json["avatar"] is String) {
            avatar = json["avatar"];
        }
        if(json["name"] is String) {
            name = json["name"];
        }
        if(json["verified"] is bool) {
            verified = json["verified"];
        }
        if(json["weburl"] is String) {
            weburl = json["weburl"];
        }
        if(json["adamid"] is String) {
            adamid = json["adamid"];
        }
    }

    static List<Artist> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Artist.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["avatar"] = avatar;
        _data["name"] = name;
        _data["verified"] = verified;
        _data["weburl"] = weburl;
        _data["adamid"] = adamid;
        return _data;
    }

    Artist copyWith({
        String? avatar,
        String? name,
        bool? verified,
        String? weburl,
        String? adamid,
    }) => Artist(
        avatar: avatar ?? this.avatar,
        name: name ?? this.name,
        verified: verified ?? this.verified,
        weburl: weburl ?? this.weburl,
        adamid: adamid ?? this.adamid,
    );
}

class Tracks {
    List<Hits>? hits;

    Tracks({this.hits});

    Tracks.fromJson(Map<String, dynamic> json) {
        if(json["hits"] is List) {
            hits = json["hits"] == null ? null : (json["hits"] as List).map((e) => Hits.fromJson(e)).toList();
        }
    }

    static List<Tracks> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Tracks.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(hits != null) {
            _data["hits"] = hits?.map((e) => e.toJson()).toList();
        }
        return _data;
    }

    Tracks copyWith({
        List<Hits>? hits,
    }) => Tracks(
        hits: hits ?? this.hits,
    );
}

class Hits {
    Track? track;

    Hits({this.track});

    Hits.fromJson(Map<String, dynamic> json) {
        if(json["track"] is Map) {
            track = json["track"] == null ? null : Track.fromJson(json["track"]);
        }
    }

    static List<Hits> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Hits.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(track != null) {
            _data["track"] = track?.toJson();
        }
        return _data;
    }

    Hits copyWith({
        Track? track,
    }) => Hits(
        track: track ?? this.track,
    );
}

class Track {
    String? layout;
    String? type;
    String? key;
    String? title;
    String? subtitle;
    Share? share;
    Images? images;
    Hub? hub;
    List<Artists>? artists;
    String? url;

    Track({this.layout, this.type, this.key, this.title, this.subtitle, this.share, this.images, this.hub, this.artists, this.url});

    Track.fromJson(Map<String, dynamic> json) {
        if(json["layout"] is String) {
            layout = json["layout"];
        }
        if(json["type"] is String) {
            type = json["type"];
        }
        if(json["key"] is String) {
            key = json["key"];
        }
        if(json["title"] is String) {
            title = json["title"];
        }
        if(json["subtitle"] is String) {
            subtitle = json["subtitle"];
        }
        if(json["share"] is Map) {
            share = json["share"] == null ? null : Share.fromJson(json["share"]);
        }
        if(json["images"] is Map) {
            images = json["images"] == null ? null : Images.fromJson(json["images"]);
        }
        if(json["hub"] is Map) {
            hub = json["hub"] == null ? null : Hub.fromJson(json["hub"]);
        }
        if(json["artists"] is List) {
            artists = json["artists"] == null ? null : (json["artists"] as List).map((e) => Artists.fromJson(e)).toList();
        }
        if(json["url"] is String) {
            url = json["url"];
        }
    }

    static List<Track> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Track.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["layout"] = layout;
        _data["type"] = type;
        _data["key"] = key;
        _data["title"] = title;
        _data["subtitle"] = subtitle;
        if(share != null) {
            _data["share"] = share?.toJson();
        }
        if(images != null) {
            _data["images"] = images?.toJson();
        }
        if(hub != null) {
            _data["hub"] = hub?.toJson();
        }
        if(artists != null) {
            _data["artists"] = artists?.map((e) => e.toJson()).toList();
        }
        _data["url"] = url;
        return _data;
    }

    Track copyWith({
        String? layout,
        String? type,
        String? key,
        String? title,
        String? subtitle,
        Share? share,
        Images? images,
        Hub? hub,
        List<Artists>? artists,
        String? url,
    }) => Track(
        layout: layout ?? this.layout,
        type: type ?? this.type,
        key: key ?? this.key,
        title: title ?? this.title,
        subtitle: subtitle ?? this.subtitle,
        share: share ?? this.share,
        images: images ?? this.images,
        hub: hub ?? this.hub,
        artists: artists ?? this.artists,
        url: url ?? this.url,
    );
}

class Artists {
    String? id;
    String? adamid;

    Artists({this.id, this.adamid});

    Artists.fromJson(Map<String, dynamic> json) {
        if(json["id"] is String) {
            id = json["id"];
        }
        if(json["adamid"] is String) {
            adamid = json["adamid"];
        }
    }

    static List<Artists> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Artists.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["adamid"] = adamid;
        return _data;
    }

    Artists copyWith({
        String? id,
        String? adamid,
    }) => Artists(
        id: id ?? this.id,
        adamid: adamid ?? this.adamid,
    );
}

class Hub {
    String? type;
    String? image;
    List<Actions>? actions;
    List<Options>? options;
    List<Providers>? providers;
    bool? explicit;
    String? displayname;

    Hub({this.type, this.image, this.actions, this.options, this.providers, this.explicit, this.displayname});

    Hub.fromJson(Map<String, dynamic> json) {
        if(json["type"] is String) {
            type = json["type"];
        }
        if(json["image"] is String) {
            image = json["image"];
        }
        if(json["actions"] is List) {
            actions = json["actions"] == null ? null : (json["actions"] as List).map((e) => Actions.fromJson(e)).toList();
        }
        if(json["options"] is List) {
            options = json["options"] == null ? null : (json["options"] as List).map((e) => Options.fromJson(e)).toList();
        }
        if(json["providers"] is List) {
            providers = json["providers"] == null ? null : (json["providers"] as List).map((e) => Providers.fromJson(e)).toList();
        }
        if(json["explicit"] is bool) {
            explicit = json["explicit"];
        }
        if(json["displayname"] is String) {
            displayname = json["displayname"];
        }
    }

    static List<Hub> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Hub.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["type"] = type;
        _data["image"] = image;
        if(actions != null) {
            _data["actions"] = actions?.map((e) => e.toJson()).toList();
        }
        if(options != null) {
            _data["options"] = options?.map((e) => e.toJson()).toList();
        }
        if(providers != null) {
            _data["providers"] = providers?.map((e) => e.toJson()).toList();
        }
        _data["explicit"] = explicit;
        _data["displayname"] = displayname;
        return _data;
    }

    Hub copyWith({
        String? type,
        String? image,
        List<Actions>? actions,
        List<Options>? options,
        List<Providers>? providers,
        bool? explicit,
        String? displayname,
    }) => Hub(
        type: type ?? this.type,
        image: image ?? this.image,
        actions: actions ?? this.actions,
        options: options ?? this.options,
        providers: providers ?? this.providers,
        explicit: explicit ?? this.explicit,
        displayname: displayname ?? this.displayname,
    );
}

class Providers {
    String? caption;
   
    List<Actions2>? actions;
    String? type;

    Providers({this.caption,  this.actions, this.type});

    Providers.fromJson(Map<String, dynamic> json) {
        if(json["caption"] is String) {
            caption = json["caption"];
        }
       
        if(json["actions"] is List) {
            actions = json["actions"] == null ? null : (json["actions"] as List).map((e) => Actions2.fromJson(e)).toList();
        }
        if(json["type"] is String) {
            type = json["type"];
        }
    }

    static List<Providers> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Providers.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["caption"] = caption;
        
        if(actions != null) {
            _data["actions"] = actions?.map((e) => e.toJson()).toList();
        }
        _data["type"] = type;
        return _data;
    }

    Providers copyWith({
        String? caption,
      
        List<Actions2>? actions,
        String? type,
    }) => Providers(
        caption: caption ?? this.caption,
       
        actions: actions ?? this.actions,
        type: type ?? this.type,
    );
}

class Actions2 {
    String? name;
    String? type;
    String? uri;

    Actions2({this.name, this.type, this.uri});

    Actions2.fromJson(Map<String, dynamic> json) {
        if(json["name"] is String) {
            name = json["name"];
        }
        if(json["type"] is String) {
            type = json["type"];
        }
        if(json["uri"] is String) {
            uri = json["uri"];
        }
    }

    static List<Actions2> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Actions2.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["name"] = name;
        _data["type"] = type;
        _data["uri"] = uri;
        return _data;
    }

    Actions2 copyWith({
        String? name,
        String? type,
        String? uri,
    }) => Actions2(
        name: name ?? this.name,
        type: type ?? this.type,
        uri: uri ?? this.uri,
    );
}

class Options {
    String? caption;
    List<Actions1>? actions;
    Beacondata? beacondata;
    String? image;
    String? type;
    String? listcaption;
    String? overflowimage;
    bool? colouroverflowimage;
    String? providername;

    Options({this.caption, this.actions, this.beacondata, this.image, this.type, this.listcaption, this.overflowimage, this.colouroverflowimage, this.providername});

    Options.fromJson(Map<String, dynamic> json) {
        if(json["caption"] is String) {
            caption = json["caption"];
        }
        if(json["actions"] is List) {
            actions = json["actions"] == null ? null : (json["actions"] as List).map((e) => Actions1.fromJson(e)).toList();
        }
        if(json["beacondata"] is Map) {
            beacondata = json["beacondata"] == null ? null : Beacondata.fromJson(json["beacondata"]);
        }
        if(json["image"] is String) {
            image = json["image"];
        }
        if(json["type"] is String) {
            type = json["type"];
        }
        if(json["listcaption"] is String) {
            listcaption = json["listcaption"];
        }
        if(json["overflowimage"] is String) {
            overflowimage = json["overflowimage"];
        }
        if(json["colouroverflowimage"] is bool) {
            colouroverflowimage = json["colouroverflowimage"];
        }
        if(json["providername"] is String) {
            providername = json["providername"];
        }
    }

    static List<Options> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Options.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["caption"] = caption;
        if(actions != null) {
            _data["actions"] = actions?.map((e) => e.toJson()).toList();
        }
        if(beacondata != null) {
            _data["beacondata"] = beacondata?.toJson();
        }
        _data["image"] = image;
        _data["type"] = type;
        _data["listcaption"] = listcaption;
        _data["overflowimage"] = overflowimage;
        _data["colouroverflowimage"] = colouroverflowimage;
        _data["providername"] = providername;
        return _data;
    }

    Options copyWith({
        String? caption,
        List<Actions1>? actions,
        Beacondata? beacondata,
        String? image,
        String? type,
        String? listcaption,
        String? overflowimage,
        bool? colouroverflowimage,
        String? providername,
    }) => Options(
        caption: caption ?? this.caption,
        actions: actions ?? this.actions,
        beacondata: beacondata ?? this.beacondata,
        image: image ?? this.image,
        type: type ?? this.type,
        listcaption: listcaption ?? this.listcaption,
        overflowimage: overflowimage ?? this.overflowimage,
        colouroverflowimage: colouroverflowimage ?? this.colouroverflowimage,
        providername: providername ?? this.providername,
    );
}

class Beacondata {
    String? type;
    String? providername;

    Beacondata({this.type, this.providername});

    Beacondata.fromJson(Map<String, dynamic> json) {
        if(json["type"] is String) {
            type = json["type"];
        }
        if(json["providername"] is String) {
            providername = json["providername"];
        }
    }

    static List<Beacondata> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Beacondata.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["type"] = type;
        _data["providername"] = providername;
        return _data;
    }

    Beacondata copyWith({
        String? type,
        String? providername,
    }) => Beacondata(
        type: type ?? this.type,
        providername: providername ?? this.providername,
    );
}

class Actions1 {
    String? name;
    String? type;
    String? uri;

    Actions1({this.name, this.type, this.uri});

    Actions1.fromJson(Map<String, dynamic> json) {
        if(json["name"] is String) {
            name = json["name"];
        }
        if(json["type"] is String) {
            type = json["type"];
        }
        if(json["uri"] is String) {
            uri = json["uri"];
        }
    }

    static List<Actions1> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Actions1.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["name"] = name;
        _data["type"] = type;
        _data["uri"] = uri;
        return _data;
    }

    Actions1 copyWith({
        String? name,
        String? type,
        String? uri,
    }) => Actions1(
        name: name ?? this.name,
        type: type ?? this.type,
        uri: uri ?? this.uri,
    );
}

class Actions {
    String? name;
    String? type;
    String? uri;

    Actions({this.name, this.type, this.uri});

    Actions.fromJson(Map<String, dynamic> json) {
        if(json["name"] is String) {
            name = json["name"];
        }
        if(json["type"] is String) {
            type = json["type"];
        }
        if(json["uri"] is String) {
            uri = json["uri"];
        }
    }

    static List<Actions> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Actions.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["name"] = name;
        _data["type"] = type;
        _data["uri"] = uri;
        return _data;
    }

    Actions copyWith({
        String? name,
        String? type,
        String? uri,
    }) => Actions(
        name: name ?? this.name,
        type: type ?? this.type,
        uri: uri ?? this.uri,
    );
}

class Images {
    String? background;
    String? coverart;
    String? coverarthq;
    String? joecolor;

    Images({this.background, this.coverart, this.coverarthq, this.joecolor});

    Images.fromJson(Map<String, dynamic> json) {
        if(json["background"] is String) {
            background = json["background"];
        }
        if(json["coverart"] is String) {
            coverart = json["coverart"];
        }
        if(json["coverarthq"] is String) {
            coverarthq = json["coverarthq"];
        }
        if(json["joecolor"] is String) {
            joecolor = json["joecolor"];
        }
    }

    static List<Images> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Images.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["background"] = background;
        _data["coverart"] = coverart;
        _data["coverarthq"] = coverarthq;
        _data["joecolor"] = joecolor;
        return _data;
    }

    Images copyWith({
        String? background,
        String? coverart,
        String? coverarthq,
        String? joecolor,
    }) => Images(
        background: background ?? this.background,
        coverart: coverart ?? this.coverart,
        coverarthq: coverarthq ?? this.coverarthq,
        joecolor: joecolor ?? this.joecolor,
    );
}

class Share {
    String? subject;
    String? text;
    String? href;
    String? image;
    String? twitter;
    String? html;
    String? avatar;
    String? snapchat;

    Share({this.subject, this.text, this.href, this.image, this.twitter, this.html, this.avatar, this.snapchat});

    Share.fromJson(Map<String, dynamic> json) {
        if(json["subject"] is String) {
            subject = json["subject"];
        }
        if(json["text"] is String) {
            text = json["text"];
        }
        if(json["href"] is String) {
            href = json["href"];
        }
        if(json["image"] is String) {
            image = json["image"];
        }
        if(json["twitter"] is String) {
            twitter = json["twitter"];
        }
        if(json["html"] is String) {
            html = json["html"];
        }
        if(json["avatar"] is String) {
            avatar = json["avatar"];
        }
        if(json["snapchat"] is String) {
            snapchat = json["snapchat"];
        }
    }

    static List<Share> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Share.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["subject"] = subject;
        _data["text"] = text;
        _data["href"] = href;
        _data["image"] = image;
        _data["twitter"] = twitter;
        _data["html"] = html;
        _data["avatar"] = avatar;
        _data["snapchat"] = snapchat;
        return _data;
    }

    Share copyWith({
        String? subject,
        String? text,
        String? href,
        String? image,
        String? twitter,
        String? html,
        String? avatar,
        String? snapchat,
    }) => Share(
        subject: subject ?? this.subject,
        text: text ?? this.text,
        href: href ?? this.href,
        image: image ?? this.image,
        twitter: twitter ?? this.twitter,
        html: html ?? this.html,
        avatar: avatar ?? this.avatar,
        snapchat: snapchat ?? this.snapchat,
    );
}