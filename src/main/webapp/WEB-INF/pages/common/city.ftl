<div class="ui modal cityModal" style="position: fixed;">
    <i class="close icon"></i>
    <div class="header">
        城市选择
    </div>
    <div class="content">
        <p>
        <div class="ui pointing secondary menu">
            <a class="item cityTab active" data-tab="most-visited">常用城市</a>
            <a class="item cityTab" data-tab="manual-add">批量添加</a>
            <a class="item cityTab" data-tab="china-city">国内城市</a>
            <a class="item cityTab" data-tab="oversea-city">海外城市</a>
        </div>

        <div class="ui tab segment cityTabSegment active"  data-tab="most-visited">
            <div class="ui items">
                <div class="ui checkbox">
                    <input type="checkbox" name="example">
                    <label>全部分类</label>
                </div>

                <div style="max-height: 40vh; overflow-y:scroll;">
                <#list 1..26 as x>
                    <div class="item">
                        <div class="content">
                            <label>城市组</label>
                            <div class="description">
                                <div class="inline fileds">
                                    <input type="checkbox" name="example">
                                    <label class="city-item-label">国内全部</label>
                                </div>
                            </div>
                            <div class="extra">
                                <i class="green check icon"></i>
                                121 Votes
                            </div>
                        </div>
                    </div>
                </#list>
                </div>
            </div>
        </div>

        <div class="ui tab segment cityTabSegment" data-tab="manual-add">
            <div class="ui top attached tabular menu">
                <a class="item active" data-tab="second/a">2A</a>
                <a class="item" data-tab="second/b">2B</a>
                <a class="item" data-tab="second/c">2C</a>
            </div>
            <div class="ui bottom attached tab segment active" data-tab="second/a">2A</div>
            <div class="ui bottom attached tab segment" data-tab="second/b">2B</div>
            <div class="ui bottom attached tab segment" data-tab="second/c">2C</div>
        </div>

        <!--国内城市-->
        <div class="ui tab segment cityTabSegment" data-tab="china-city">
            <div class="ui top attached tabular menu">
                <a class="item active" data-tab="china-city/a">3A</a>
                <a class="item" data-tab="china-city/b">3B</a>
                <a class="item" data-tab="china-city/c">3C</a>
            </div>
            <div class="ui bottom attached tab segment active" data-tab="china-city/a">3A</div>
            <div class="ui bottom attached tab segment" data-tab="china-city/b">3B</div>
            <div class="ui bottom attached tab segment" data-tab="china-city/c">3C</div>
        </div>

        <!--海外城市-->
        <div class="ui tab segment cityTabSegment" data-tab="oversea-city">
            <div class="ui items">
                <div class="ui checkbox">
                    <input type="checkbox" name="example">
                    <label>全部分类</label>
                </div>

                <div style="max-height: 40vh; overflow-y:scroll;">
                    <div class="item">
                        <div class="content">
                            <label>城市组</label>
                            <div class="description">
                                <div class="inline fileds">
                                    <input type="checkbox" name="example">
                                    <label class="city-item-label">国内全部</label>
                                    <input type="checkbox" name="example">
                                </div>
                            </div>
                            <div class="extra">
                                <i class="green check icon"></i>
                                121 Votes
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </p>
    </div>
    <div class="actions">
        <div class="ui grey cancel button">取消</div>
        <div class="ui blue approve button">确定</div>
    </div>
</div>